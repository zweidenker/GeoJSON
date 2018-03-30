accessing
coordinates: aCollection 
	geometries := aCollection do: [ :each |
		self addLinearRing: (GJLinearRing new coordinates: each)  ]