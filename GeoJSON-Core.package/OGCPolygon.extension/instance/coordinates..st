*GeoJSON-Core
coordinates: aCollection 
	(aCollection anySatisfy: [ :each | each class = Array ])
	ifTrue: [
		"coordinates contain an exterior ring and interior rings"
		self addExteriorRing: (OGCLinearRing new coordinates: aCollection first).
		aCollection allButFirst do: [ :each |
		self addInteriorRing: (OGCLinearRing new coordinates: each)  ]
		]
	ifFalse: [ 
		"coordiniates only contain an exterior ring"
		aCollection do: [ :each |
		self addExteriorRing: (OGCLinearRing new coordinates: each)  ]
		 ]