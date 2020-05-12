accessing
coordinates: aCollection 
	geometries := aCollection collect: [ :each |
		GJLineString new coordinates: each ]