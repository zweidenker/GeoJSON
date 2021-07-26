*GeoJSON-Core
coordinates: aCollection 
	geometries := aCollection collect: [ :each |
		OGCPolygon new coordinates: each ]