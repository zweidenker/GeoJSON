accessing
coordinates: aCollection
	"a point should only have two coordinates being numbers"
	coordinates := (aCollection first: 2) collect: #asNumber