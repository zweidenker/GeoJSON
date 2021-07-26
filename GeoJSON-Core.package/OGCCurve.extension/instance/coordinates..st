*GeoJSON-Core
coordinates: aCollection 
	self points: (aCollection collect: [ :each | OGCPoint xy: each ])