# smallest

"Smallest Possible Language" - a self-hosted compiler.


## Why!?

For fun. Design considerations:

* Define the smallest possible (high-level) language that can compile itself.
* As simple as possible, but no simpler.
* All keywords and symbols are single-character non-alphanumerics. Some symbols (e.g., `>`) have been omitted. Just use `<` instead.
* No strings, structs, floats, bytes, or booleans. Well...strings can be represented as arrays, and booleans can be represented as ints.
* The only data types are ints (32-bits) and arrays of ints.
 
## Keywords (Symbols)

`;` - comment to end of line

`$` - print the (int) argument as a character

`#` - print the (int) argument as an integer

`~` - while

`? :` - if/else

`^` - return

`@` - input

`_` - define function

`%` - allocate array 

`'` - character constant (really just an int)

`\` - stop/exit

And the usual math: `+ - * ( ) [ ] & | ! = <`

Note: `=` is used for both assignment and comparison. `!` is the "not equals" comparison.

There is no division or modulo or `>` or `>=` or `<=`.

Blocks are separated with parentheses.


## Data types

There are two data types: 32-bit ints and arrays of 32-bit ints.

When comparing ints, the result is an int (0 for false, 1 for true.)


## Variables

Variables that start with `a` are arrays of ints. All other variables are ints.

Only *alphabetic characters* are allowed in variable names. Variable and function
names are *case-sensitive*.

Variables can be defined outside functions and are then global for all functions
to read and modify.


## Arrays

### Naming

Variables that start with `a` are arrays of ints.

### Declaration

```
arr%4
```

Allocates an array named `arr` of size 4.

Array sizes can be dynamic:

```
arr%(i+3)
```

Allocates an array of size `i+3`.

### Indexing

```
arr[0] = 34
arr[1] = 65
arr[2] = 34
arr[3] = 0
```

The following line is equivalent to `if arr[i] == 0 { println("Empty") }`:

```
? (arr[i]=0) ( $'E $'m $'p $'t $'y $10 )
```

### Length

There is no "array length" operator.


## Functions

### Naming

Only alphabetic characters are allowed in function names.

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
_vprint(as) (
  i=0
  ~ (as[i] ! 0) (   ; while as[i] != 0
    $ as[i]       ; print as[i] as a character
    i=i+1
  )
)
```

