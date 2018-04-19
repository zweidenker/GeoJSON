as yet unclassified
degree: degree minutes: minutes seconds: seconds direction: direction 
	| decimal |
	decimal := (degree + (minutes / 60) + (seconds / 3600)) asFloat.
	((direction = #north) | (direction = #south)) ifTrue: [ 
		^ self latitude: decimal ].
	((direction = #east) | (direction = #west)) ifTrue: [ 
		^ self longitude: decimal ].
	Error signal: 'direction is unknow. Needs to be #east #west #north or #south'