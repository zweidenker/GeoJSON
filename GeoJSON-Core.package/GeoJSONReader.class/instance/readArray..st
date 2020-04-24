reading
readArray: anArray
	^ anArray collect: [ :each |
		each readGeoJSONFrom: self ]