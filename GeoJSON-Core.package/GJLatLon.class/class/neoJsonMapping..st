accessing
neoJsonMapping: mapper
	mapper for: self do: [ :mapping |
		mapping mapAccessors: #(latitude longitude) ]
