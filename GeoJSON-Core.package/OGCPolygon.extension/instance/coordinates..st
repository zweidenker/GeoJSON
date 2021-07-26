*GeoJSON-Core
coordinates: aCollection 
	aCollection do: [ :each |
		self addLinearRing: (OGCLinearRing new coordinates: each)  ]