Extension { #name : #Number }

{ #category : #'*Function' }
Number >> addToFunction: aFunction [
	^ [ :x | (aFunction value: x) + self ] asFunction.
]

{ #category : #'*Function' }
Number >> composeWithFunction: aFunction [
	^ aFunction value: self.
]
