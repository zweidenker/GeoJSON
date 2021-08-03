tests
testSearchFeatureWithPropertykey
	| model features |
	model := GeoJSONExamples barsLille.
	features := (model searchFeatureWithPropertyKey: 'name' andValue: 'Beerchope') .
	self assert: features isNotEmpty.
	self assert: (features first properties includesAssociation: (Association key: 'name' value: 'Beerchope'))
	