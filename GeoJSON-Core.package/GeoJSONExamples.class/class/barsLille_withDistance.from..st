advanced examples
barsLille_withDistance: aDistanceInMeters from: aBarName

	| model bar selectedBars result |

	model := self barsLille.
	bar := (model searchFeatureWithPropertyKey: 'name' andValue: aBarName) first.
	selectedBars := model searchFrom: bar inRay: aDistanceInMeters /1000.
	(selectedBars isNotEmpty) ifTrue: [ 
		result := OrderedCollection new.
	selectedBars do: [ :each | 
		result add: 
			(
				Association 
					key: (each properties at: 'name' ifAbsent: '<unknown>')
					value: 
					(((each geometry distance: bar geometry) * 1000) asInteger)
			)
		].
	^ result sorted: [ :a :b | a value < b value ]
	]
	ifFalse: [ ^ 'Nothing around' ]