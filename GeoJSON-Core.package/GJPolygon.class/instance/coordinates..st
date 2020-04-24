accessing
coordinates: aCollection 
	aCollection do: [ :each |
		self addLinearRing: (GJLinearRing new coordinates: each)  ]