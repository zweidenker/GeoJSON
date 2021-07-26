*GeoJSON-Core
fromDictionary: dict
	^ (self withType: (dict at: 'type'))
		new 
		coordinates: (dict at: 'coordinates').