*GeoJSON-Core
checkForIntersection
	((GJIntersectionDetector on: self coordinates) hasIntersections) ifTrue: [ 
			Error signal: 'polygon has intersection' ].