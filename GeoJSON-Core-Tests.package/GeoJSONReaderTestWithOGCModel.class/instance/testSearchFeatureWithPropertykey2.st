tests
testSearchFeatureWithPropertykey2
	| model feature |
	model := GeoJSONReader fromString: GeoJSONReader sample_barsLille withModel: OGCObject.
	feature := (model searchFeatureWithPropertyKey: 'falseKey' andValue: 'falseValue') .
	self assert: feature isEmpty.