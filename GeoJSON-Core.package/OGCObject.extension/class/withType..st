*GeoJSON-Core
withType: aString 
	^ (self allSubclasses reject: #isAbstract)
		detect: [ :each | each geoJsonTypeLabel = aString ]