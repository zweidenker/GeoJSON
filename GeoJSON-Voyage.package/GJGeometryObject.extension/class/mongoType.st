*GeoJSON-Voyage
mongoType
	<mongoDescription>
	^ VOToOneDescription new
		attributeName: 'type';
		accessor: (MAPluggableAccessor new
			readBlock: [ :obj | obj class type ];
			writeBlock: [:obj :value | "ignore as it is static content" ])