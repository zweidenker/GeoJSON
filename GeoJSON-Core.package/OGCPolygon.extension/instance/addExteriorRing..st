*GeoJSON-Core
addExteriorRing: anExteriorRing
	anExteriorRing isClosed ifFalse: [ 
		Error signal: 'linear ring is not closed' ].
	exteriorRing := anExteriorRing 