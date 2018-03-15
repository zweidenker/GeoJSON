accessing
coordinates: aCollection 
	geometries := aCollection collect: [ :each |
		GJPolygon new coordinates: each ]