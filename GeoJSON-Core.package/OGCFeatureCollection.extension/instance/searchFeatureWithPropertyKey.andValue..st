*GeoJSON-Core
searchFeatureWithPropertyKey: aKey andValue: aValue
	^ features select: [ 
			:aFeature | aFeature properties includesAssociation: (Association key: aKey value: aValue) ]