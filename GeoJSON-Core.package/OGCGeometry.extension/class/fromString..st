*GeoJSON-Core
fromString: string
	^ self fromDictionary: (NeoJSONReader fromString: string)