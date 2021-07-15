*GeoJSON-Core
ensureClosed
	"the ring should be closed. If not we remove the last coordinate and replace
	it with the first coordinate to correct that"
	points removeLast.
	self close