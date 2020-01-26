Class {
	#name : #BaselineOfFunction,
	#superclass : #BaselineOf,
	#category : #BaselineOfFunction
}

{ #category : #baselines }
BaselineOfFunction >> baseline: spec [
	<baseline>
	spec for: #common do: [	
			
		"Packages"
		spec 
			package: 'Function';
			package: 'Function-Tests' with: [ spec requires: #('Function') ] ].
]
