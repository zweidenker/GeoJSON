reading
readDictionary: aDictionary
	| object |
	object := (self resolveType: (aDictionary at: #type)) new.
	aDictionary keysAndValuesDo: [ :selector :rawValue |
		(selector = #type) ifFalse: [ 
			(selector = #properties)
				ifTrue: [ 
					object properties: rawValue ]
				ifFalse: [   
					object
						perform: selector asSymbol asMutator
						with: (rawValue readGeoJSONFrom: self) ] ] ].
	^ object