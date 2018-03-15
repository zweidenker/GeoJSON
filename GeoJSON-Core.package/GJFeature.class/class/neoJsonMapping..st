as yet unclassified
neoJsonMapping: aMapper
	aMapper for: self do: [ :mapping |
		mapping mapAccessor: #coordinates.
		mapping 
			mapProperty: #type 
			getter: [ :object | object class type  ] 
			setter: [ :object :value | ]]