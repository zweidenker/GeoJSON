*GeoJSON-Core
circleAroundRadius: aRadius amount: aNumber
	| points   p  center |
	center := self asPoint.
	p := center translateBy: 0@(aRadius / 111000).
	points := OrderedCollection new.
	0 to: 360 by: ( 360 / aNumber ) do: [ :r | | np |
		np := (p rotateBy: ( r / 360 ) * Float pi * 2 about: center).
		points add: { np x . np y } ].
	
	"ensure it is closed"
	^ OGCPolygon new exteriorRing: points