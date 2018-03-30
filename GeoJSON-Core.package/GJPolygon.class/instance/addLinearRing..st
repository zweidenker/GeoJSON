adding
addLinearRing: aLinearRing
	aLinearRing isClosed ifFalse: [ 
		Error signal: 'linear ring is not closed' ].
	geometries add: aLinearRing 