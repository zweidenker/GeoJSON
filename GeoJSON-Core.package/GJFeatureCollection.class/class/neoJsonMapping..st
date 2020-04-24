accessing
neoJsonMapping: aMapper
	super neoJsonMapping: aMapper.
	aMapper for: self do: [ :mapping |
		mapping mapInstVar: #features ]