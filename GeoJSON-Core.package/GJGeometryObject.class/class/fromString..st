instance creation
fromString: string
	^ self fromDictionary: (NeoJSONReader fromString: string)