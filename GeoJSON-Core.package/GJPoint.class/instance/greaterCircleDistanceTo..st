as yet unclassified
greaterCircleDistanceTo: aGJPoint
	| maxDistancePerDegree longitudeFactor deltaLatitude deltaLongitude |
	"Simplyfications:
		- the earth is a perfect sphere
		- the equator has a approximate circumference of 40,075 km"
	maxDistancePerDegree := 111319. " ca 40075000 m / 360° "
	longitudeFactor := ((self latitude + aGJPoint latitude) / 2 * Float pi / 180) cos.
	deltaLongitude := (self longitude - aGJPoint longitude) * maxDistancePerDegree * longitudeFactor.
	deltaLatitude := (self latitude - aGJPoint latitude) * maxDistancePerDegree.
	^ ((deltaLongitude raisedTo: 2) + (deltaLatitude raisedTo: 2)) sqrt.