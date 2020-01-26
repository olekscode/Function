Class {
	#name : #Function,
	#superclass : #Object,
	#instVars : [
		'block'
	],
	#category : #Function
}

{ #category : #'instance creation' }
Function class >> newFrom: aBlock [ 
	^ self new block: aBlock; yourself
]

{ #category : #arithmetic }
Function >> + aNumberOrFunction [
	^ aNumberOrFunction addToFunction: self.
]

{ #category : #arithmetic }
Function >> @ aNumberOrFunction [
	"Composition of two functions f(x) and g(x) is a new function f@g(x) = f(g(x)).
	Composition of function f(x) and a number K is simply the value of f(K): f@2 = f(2)"
	^ aNumberOrFunction composeWithFunction: self
]

{ #category : #arithmetic }
Function >> addToFunction: anotherFunction [
	^ [ :x | (anotherFunction value: x) + (self value: x) ] asFunction
]

{ #category : #accessing }
Function >> block [
	^ block 
]

{ #category : #accessing }
Function >> block: aBlock [
	block := aBlock
]

{ #category : #arithmetic }
Function >> composeWithFunction: anotherFunction [
	^ [ :x | anotherFunction value: (self value: x) ] asFunction.
]

{ #category : #accessing }
Function >> value: anArgument [
	^ block value: anArgument
]
