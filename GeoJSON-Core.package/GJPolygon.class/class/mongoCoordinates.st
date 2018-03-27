as yet unclassified
mongoCoordinates
	<mongoDescription>
	^ VOToOneDescription new
		attributeName: #coordinates;
		accessor: (MAPluggableAccessor new
			readBlock: [:obj | Array withAll: (obj geometries collect: #coordinates) ];
			writeBlock: [:obj :value | obj geometries: (value collect: [:each | GJLinearRing coordinates: each]) ])