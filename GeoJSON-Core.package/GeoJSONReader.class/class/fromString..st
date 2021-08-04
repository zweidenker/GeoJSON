instance creation
fromString: aString
	"return OGC object model from a string of GeoJSON"
	^ (self on: aString readStream)
		next 