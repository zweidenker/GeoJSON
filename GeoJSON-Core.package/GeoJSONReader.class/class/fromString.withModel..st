instance creation
fromString: aString withModel: aModel
	^ (self on: aString readStream withModel: aModel)
		next 