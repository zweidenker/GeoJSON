accessing
coordinates
	^ coordinates ifNil: [ 
		coordinates := Array new: 2 ]