*GeoJSON-Core
neoJsonMapping: aMapper
	aMapper for: self do: [ :mapping |
		mapping 
			mapProperty: #type 
			getter: [ :object | object class geoJsonTypeLabel  ] 
			setter: [ :object :value | ]]