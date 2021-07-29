tests
testSearchFeatureWithPropertykey2
	| model feature |
	model := GeoJSONReader fromString: GeoJSONReader sample_barsLille.
	feature := (model searchFeatureWithPropertyKey: 'falseKey' andValue: 'falseValue') .
	self assert: feature isEmpty.