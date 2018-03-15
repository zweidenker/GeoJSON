as yet unclassified
intersections
	| intersections |
	intersections := OrderedCollection new.
	1 to: self segments size do: [ :idx1 |
		idx1 + 1 to: self segments size do: [ :idx2 |
			((self segments at: idx1) intersectionWith: (self segments at: idx2)) ifTrue: [ 
				intersections add: { { idx1 . self segments at: idx1 } .  { idx2 . self segments at: idx2 }} ] ] ].	
	^ intersections 