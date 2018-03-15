instance creation
withType: aString
	^ (self allSubclasses reject: #isAbstract)
		detect: [ :each | each type = aString ]