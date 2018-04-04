instance creation
fromTuple: aCollection 
	^ self new
		latitude: aCollection first;
		longitude: aCollection second