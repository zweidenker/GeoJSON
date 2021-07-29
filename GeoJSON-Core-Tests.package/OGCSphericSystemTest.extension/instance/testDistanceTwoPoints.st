*GeoJSON-Core-Tests
testDistanceTwoPoints
	| model bar1 bar2 distance |
	model := GeoJSONReader fromString: GeoJSONReader sample_barsLille.
	bar1 := (model searchFeatureWithPropertyKey: 'name' andValue: 'Beerchope') first geometry .
	bar2 := (model searchFeatureWithPropertyKey: 'name' andValue: 'Dernier Bar avant la Fin du Monde') first geometry.
	distance := bar1 distance: bar2.
	self assert: (distance round: 3) equals: 0.564