reading
readDictionary: aDictionary
	| object |
	object := (self resolveType: (aDictionary at: #type)) new.
	aDictionary keysAndValuesDo: [ :selector :rawValue |
		(selector = #style) 
			ifTrue: [ 
				| styleDictionary |
				styleDictionary := rawValue asDictionary .
				styleDictionary keysDo:[ :aKey | object style at: aKey put: ( styleDictionary at: aKey ) ].
			 ]
			ifFalse: [ 
					(selector = #type) ifFalse: [ 
						(selector = #properties)
							ifTrue: [ 
								object properties: rawValue ]
							ifFalse: [   
								[ object
										perform: selector asSymbol asMutator
										with: (rawValue readGeoJSONFrom: self) ]
								onErrorDo: [ 
										object addPropertyKey: selector withValue: rawValue
						 		]
							] 
					] 
			]
		].
	^ object