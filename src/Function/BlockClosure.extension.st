Extension { #name : #BlockClosure }

{ #category : #'*Function' }
BlockClosure >> asFunction [
	^ Function newFrom: self
]
