accessing
segments
	^ segments ifNil: [   
		segments := self buildSegments ]