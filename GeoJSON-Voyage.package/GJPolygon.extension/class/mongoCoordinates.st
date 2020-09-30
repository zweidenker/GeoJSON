*GeoJSON-Voyage
mongoCoordinates
	<mongoDescription>
	
	^VOToManyDescription new
		attributeName: 'coordinates';
		accessor: (MAPluggableAccessor 
			read: [ :anObject | anObject geometries collect: #coordinates ]
			write: [ :anObject :value | anObject geometries: (value collect: #asGJLinearRing ) ]);
		yourself