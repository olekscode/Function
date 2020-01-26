# Function
Reification of a mathematical function as an object. Allows  function arithmetics and function composition.

## How to use?

Functions can be defined using block closures:

```Smalltalk
f := [ :x | x sin ] asFunction.
g := [ :x | x cos ] asFunction.
h := [ :x | x + 1 ] asFunction.

alpha := Float pi / 2.
```
### Adding Two Functions

In the following example, `f + g` is a new function `(f+g)(x) = sin(x) + cos(x)`:

```Smalltalk
(f + g) value: alpha. "1.0"
```

### Composition of Functions

Composition of two functions `f(x)` and `h(x)` is a new function `(f@h)(x) = f(h(x))`. In our example, `(f@h)(x) = sin(x+1)` and `(h@f)(x) = sin(x) + 1`:

```Smalltalk
(f @ h) value: alpha. "0.54"
(h @ f) value: alpha. "2.0"
```
