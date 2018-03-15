accessing
coordinates: aCollection 
	geometries := aCollection collect: [ :each |
		GJLinearRing new coordinates: each ]