instance creation
withType: aString
	^ (self withAllSubclasses reject: #isAbstract)
		detect: [ :each | each type = aString ]