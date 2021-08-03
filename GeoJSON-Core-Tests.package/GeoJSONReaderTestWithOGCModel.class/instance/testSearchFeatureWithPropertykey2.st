tests
testSearchFeatureWithPropertykey2
	| model feature |
	model := GeoJSONExamples barsLille .
	feature := (model searchFeatureWithPropertyKey: 'falseKey' andValue: 'falseValue') .
	self assert: feature isEmpty.