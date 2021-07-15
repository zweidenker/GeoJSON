*GeoJSON-Core
isValid
	^ self isClosed and: [ self hasIntersections not ]