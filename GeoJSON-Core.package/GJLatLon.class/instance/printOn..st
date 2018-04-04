printing
printOn: aStream
	aStream 
		nextPutAll: self latitude asString;
		nextPut: $,;
		nextPutAll:  self longitude asString