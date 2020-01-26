Class {
	#name : #FunctionTest,
	#superclass : #TestCase,
	#category : #'Function-Tests'
}

{ #category : #tests }
FunctionTest >> testAddFunctionToFunction [
	| f g h |
	f := [ :x | 3 * x - 1 ] asFunction.
	g := [ :x | 5 * x ] asFunction.
	
	"h(x) is a sum of functions f(x) and g(x).
	It is a function (f + g)(x) = f(x) + g(x).
	In this case, h(x) = 3*x - 1 + 5*x"
	h := f + g.
	
	self assert: (h value: 10) equals: 79.
]

{ #category : #tests }
FunctionTest >> testAddNumberToFunction [
	| f h |
	f := [ :x | 3 * x - 1 ] asFunction.
	
	"h(x) is a sum of function f(x) and number 7.
	It is a function h(x) = f(x) + 7.
	In this case, h(x) = 3*x - 1 + 7"
	h := f + 7.
	
	self assert: (h value: 10) equals: 36.
]

{ #category : #tests }
FunctionTest >> testComposition [
	| f g h |
	f := [ :x | 3 * x - 1 ] asFunction.
	g := [ :x | 5 * x ] asFunction.
	
	"h(x) is a composition of functions f(x) and g(x).
	It is a function f(g(x)).
	In this case, h(x) = 3*(5*x) - 1"
	h := f @ g.
	
	self assert: (h value: 10) equals: 149.
]

{ #category : #tests }
FunctionTest >> testValue [
	| f |
	f := [ :x | 3 * x - 1 ] asFunction.
	self assert: (f value: 10) equals: 29.
]
