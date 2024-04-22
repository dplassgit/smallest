package com.plasstech.lang.smallest

import scala.collection.mutable.Map
import scala.collection.mutable.Set


class SymTab(
  private val _parent: SymTab = null,
  private val _varEntries: Map[String, VarSymbol] = Map(),
  private val _procEntries: Map[String, ProcSymbol] = Map(),
):
  def this() = this(null)

  def isGlobal(): Boolean = _parent == null

  // Declare function
  def declare(name: String, params: List[VarType], returnType: VarType): Unit =
    if !isGlobal() then
      fail("Cannot nest functions")

  // Declare int variable
  def declare(name: String): Unit = ()

  // Declare array variable (?)
  def declare(name: String, length: Int): Unit = ()

  def lookupVar(name: String): VarSymbol = null
  def lookupProc(name: String): ProcSymbol = null

end SymTab

class Symbol(
  private val _name: String = "",
) :
end Symbol

class VarSymbol extends Symbol
end VarSymbol

class ProcSymbol extends Symbol
end ProcSymbol
