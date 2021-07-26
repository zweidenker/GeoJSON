*GeoJSON-Core
coordinates: aCollection 
	geometries := aCollection collect: [ :each |
		OGCLineString new coordinates: each ]