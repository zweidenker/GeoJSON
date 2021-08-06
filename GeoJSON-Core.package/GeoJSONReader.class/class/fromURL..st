collection examples
fromURL: aURL
	"return OGC object model from a link to GeoJSON file target"
	^ self fromString: ((ZnEasy get: aURL) entity string)
	