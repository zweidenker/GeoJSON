*GeoJSON-Core
degree: degree minutes: aOGCPoint seconds: seconds direction: direction 
	| decimal |
	decimal := (degree + (aOGCPoint / 60) + (seconds / 3600)) asFloat.
	((direction = #north) | (direction = #south)) ifTrue: [ 
		^ self y: decimal ].
	((direction = #east) | (direction = #west)) ifTrue: [ 
		^ self x: decimal ].
	Error signal: 'direction is unknow. Needs to be #east #west #north or #south'