# smallest

"Smallest Possible Language" - a self-hosted compiler.


## Why!?

For fun. Design considerations:

* As simple as possible, but no simpler.
* All keywords and symbols are single-character non-alphanumerics, to make the lexical analyzer easier. Some symbols (e.g., `>`) have been omitted. Just use `<` instead.
* No strings, structs, floats, bytes, or bools.
* The only two data types are ints (32-bits) and arrays of ints)
 
## Symbols/Keywords

`;` -  comment

`$` - print as character

`#` -  print as integer

`~` -  while

`? :` -  if/else

`^` -  return

`@` -  input

`_` -  define function

`%` - array size

`'` - character constant (really just an int)

And the usual math: `+ - * ( ) . & | ! = <`

Note: `=` is used for both assignment and comparison. `!` is the "not equals" comparison.

There is no division or `>` or `>=` or `<=`.

Blocks are separated with parentheses.

The `.` symbol is for array declaration and reference.

## Variables

Variables that start with `a` are arrays of ints. All other variables are ints.

Only alphabetic characters are allowed in variable names. Variable and function
names are *case-sensitive*.

## Arrays

### Naming

Variables that start with `a` are arrays of ints.

### Declaration

```
.4 arr
```

Allocates an array named `arr` of size 4.

Array sizes can be dynamic:

```
.i+3 arr
```

Allocates an array of size `i+3`.

### Indexing

Use the dot symbol to set or reference an index into an array:

```
arr.0 = 34
arr.1 = 65
arr.2 = 34
arr.3 = 0
```

```
? arr.i = 0 ( $'E $'m $'p $'t $'y $10 )  ; if arr[i] == 0 { println("Empty")}
```

### Size

Use the % prefix operator to get the size of an array.

```
i = %a
```


## Functions

### Naming

Functions that start with `v` are void. Functions that start with `a` return an array.
All other functions return int.

### Declaration & call

Factorial:

```
_fact(n) ( ; takes an int, returns an int
  ? n < 2 ( ^ n)  ; if n < 2 { return n}
  ^ n * fact(n-1)  ; return n * fact(n-1)
)
```

Print an array as a string:

```
_printstring(as) (
  i=0
  ~ as.i ! 0 (   ; while as[i] != 0
    $ as.i       ; print as[i] as a character
    i=i+1
  )
)
```


