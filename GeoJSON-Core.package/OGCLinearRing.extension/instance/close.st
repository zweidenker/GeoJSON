*GeoJSON-Core
close
	"add first coordinate as last to have the ring closed"
	points addLast: points first
	