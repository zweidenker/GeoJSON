as yet unclassified
checkForIntersection
	((GJIntersectionDetector on: coordinates) hasIntersections) ifTrue: [ 
			Error signal: 'polygon has intersection' ].