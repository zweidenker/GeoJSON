*GeoJSON-Core
coordinates: aCollection
	"a point should only have two coordinates being numbers"
	| coordinates |
	coordinates := (aCollection first: 2) collect: #asNumber.
	self x: coordinates first.
	self y: coordinates second.