instance creation
fromString: aString
	^ (self on: aString readStream)
		next 