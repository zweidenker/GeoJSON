*GeoJSON-Core
addLinearRing: aLinearRing
	aLinearRing isClosed ifFalse: [ 
		Error signal: 'linear ring is not closed' ].
	exteriorRing := aLinearRing 