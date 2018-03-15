as yet unclassified
buildSegments
	^ (1 to: coordinates size - 1) collect: [ :idx |
		MSLineSegment from: (self pointAt: idx) to: (self pointAt: idx + 1)  ].