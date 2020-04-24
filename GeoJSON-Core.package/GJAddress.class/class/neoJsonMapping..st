accessing
neoJsonMapping: mapper
	mapper for: self do: [ :mapping |
		mapping mapInstVars: #(string).
		(mapping mapInstVar: #location) valueSchema: GJPoint. ].
