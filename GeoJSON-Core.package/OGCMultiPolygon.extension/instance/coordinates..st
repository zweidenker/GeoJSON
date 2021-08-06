*GeoJSON-Core
coordinates: aCollection 
	self geometries: (aCollection collect: [ :each |
		OGCPolygon new coordinates: each ])