*GeoJSON-Core
neoJsonMapping: aMapper
	super neoJsonMapping: aMapper.
	aMapper for: self do: [ :mapping |
		mapping mapAccessor: #geometry ]