accessing
neoJsonMapping: mapper

	mapper for: self do: [ :mapping |
		mapping mapInstVars: #(address).
		(mapping mapInstVar: #location) valueSchema: GJPoint. ].
