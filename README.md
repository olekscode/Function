# Function

[![Build Status](https://travis-ci.org/olekscode/Function.svg?branch=master)](https://travis-ci.org/olekscode/Function)
[![Build status](https://ci.appveyor.com/api/projects/status/2fcibtphyy2tgk42?svg=true)](https://ci.appveyor.com/project/olekscode/function)
[![Coverage Status](https://coveralls.io/repos/github/olekscode/Function/badge.svg?branch=master)](https://coveralls.io/github/olekscode/Function?branch=master)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/olekscode/Function/master/LICENSE)
[![Pharo version](https://img.shields.io/badge/Pharo-7.0-%23aac9ff.svg)](https://pharo.org/download)
[![Pharo version](https://img.shields.io/badge/Pharo-8.0-%23aac9ff.svg)](https://pharo.org/download)

Reification of a mathematical function as an object. Allows  function arithmetics and function composition.

## Installation

To install Functon, go to the Playground (Ctrl+OW) in your Pharo image and execute the following Metacello script (select it and press Do-it button or Ctrl+D):

```Smalltalk
Metacello new
  baseline: 'Function';
  repository: 'github://olekscode/Function/src';
  load.
```

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
