converting
asGJAddressString: aString 
	^ GJAddress new
		string: aString;
		location: self
		