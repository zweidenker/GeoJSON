tests
parse: aString
	^ GeoJSONReader fromString: aString withModel: OGCObject 