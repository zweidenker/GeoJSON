*GeoJSON-Core
searchFrom: aFeature inRay: aDistanceInKm
	^ self features select: [ :each | (each = aFeature) not and: (each geometry distance: aFeature geometry) <=  aDistanceInKm ]