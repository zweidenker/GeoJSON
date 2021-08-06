tests
testFromURL
	| model |
	model := GeoJSONReader fromURL: 'https://raw.githubusercontent.com/PublicaMundi/MappingAPI/master/data/geojson/us-states.json'.
	self assert: model class equals: OGCFeatureCollection.
	self assert: model features size equals: 52.