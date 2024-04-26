package com.plasstech.lang.smallest

import scala.collection.mutable.ListBuffer
import scala.collection.mutable.Map
import scala.collection.mutable.Set


class SymTab(
  private val _parent: SymTab = null,
  private val _varEntries: Map[String, VarSymbol] = Map(),
  private val _procEntries: Map[String, ProcSymbol] = Map(),
):
  def this() = this(null)

  def parent(): SymTab = _parent
  def isGlobal(): Boolean = _parent == null
  def spawn(): SymTab = return new SymTab(this)

  // Declare procedure
  def declareProc(name: String, params: List[String]): ProcSymbol =
    if !isGlobal() then fail("Cannot nest functions")
    val retType = if name(0) == 'v' then VarType.NoVarType else inferType(name)
    val child = spawn()
    var i = params.length
    for param <- params do
      child.declareParam(param, (i+1) * 8)
      i -= 1
    val procSym = new ProcSymbol(name, retType, params, child)
    _procEntries.put(name, procSym)
    procSym

  override def toString: String = s"variables $_varEntries, procs $_procEntries"

  def declareParam(name: String, offset: Int): VarSymbol = 
    val symbol = new VarSymbol(name, inferType(name), offset, VarSymbolType.Param)
    _varEntries.put(name, symbol)
    symbol

  def declareVar(name: String): VarSymbol = 
    // look up first
    val existing = lookupVar(name)
    if existing != None then return existing.get

    val varSymType = if isGlobal() then VarSymbolType.Global else VarSymbolType.Local
    val offset = if isGlobal() then 0 else (numLocals() + 1) * 8
    val symbol = new VarSymbol(name, inferType(name), offset, varSymType)
    _varEntries.put(name, symbol)
    symbol

  def numLocals(): Int =
    _varEntries.filter(v => v._2.isLocal()).size

  def lookupVar(name: String): Option[VarSymbol] = 
    val sym = _varEntries.get(name)
    if sym != None then return sym
    if !isGlobal() then return _parent.lookupVar(name)
    return None

  def lookupProc(name: String): Option[ProcSymbol] = _procEntries.get(name)

end SymTab

abstract class Symbol(
  private val _name: String,
  private val _varType: VarType,
):
  def name(): String = _name
  def varType(): VarType = _varType

end Symbol


enum VarSymbolType:
  case Param, Local, Global

class VarSymbol (
  private val _name: String,
  private val _varType: VarType,
  private val _offset: Int,
  private val _type: VarSymbolType,
) extends Symbol(_name, _varType):

  override def toString: String = 
    s"varSymbol $_name ($_varType @ $_offset)"

  def location(): String = 
    s"[${address()}]"

  def address(): String = 
    _type match
      case VarSymbolType.Local => s"RBP-$_offset"
      case VarSymbolType.Param => s"RBP+$_offset"
      case VarSymbolType.Global => s"_$_name"

  def isLocal(): Boolean = _type == VarSymbolType.Local
  def isParam(): Boolean = _type == VarSymbolType.Param
  def isGlobal(): Boolean = _type == VarSymbolType.Global
end VarSymbol

class ProcSymbol (
  private val _name: String,
  private val _retType: VarType,
  private val _params: List[String],
  private val _symTab: SymTab,
) extends Symbol(_name, _retType):

  override def toString: String = 
    s"procSymbol $_name($_params): $_retType"

  def params(): List[String] = _params
  def symTab(): SymTab = _symTab
  def retType(): VarType = _retType

end ProcSymbol
