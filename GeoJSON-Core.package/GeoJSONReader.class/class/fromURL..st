collection examples
fromURL: aURL
	^ GeoJSONReader fromString: (self fromGJUrl: aURL)
	