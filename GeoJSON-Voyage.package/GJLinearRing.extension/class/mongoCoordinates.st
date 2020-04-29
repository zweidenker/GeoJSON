*GeoJSON-Voyage
mongoCoordinates
	<mongoDescription>
	
	^VOToManyDescription new
		attributeName: 'coordinates';
		accessor: (MAPluggableAccessor 
			read: [ :anObject | anObject coordinates collect: #asTuple ]
			write: [ :anObject :value | anObject coordinates: (value collect: #asGeoPoint)  ]);
		yourself