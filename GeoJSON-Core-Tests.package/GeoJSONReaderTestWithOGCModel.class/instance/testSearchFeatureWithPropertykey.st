tests
testSearchFeatureWithPropertykey
	| model features |
	model := GeoJSONReader fromString: GeoJSONReader sample_barsLille.
	features := (model searchFeatureWithPropertyKey: 'name' andValue: 'Beerchope') .
	self assert: features isNotEmpty.
	self assert: (features first properties includesAssociation: (Association key: 'name' value: 'Beerchope'))
	