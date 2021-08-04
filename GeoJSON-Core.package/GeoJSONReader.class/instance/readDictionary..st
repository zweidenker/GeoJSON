reading
readDictionary: aDictionary
	| object |
	"we apply specific strategy to following selector cases: type, properties and style"
	object := (self resolveType: (aDictionary at: #type)) new.
	aDictionary keysAndValuesDo: [ :selector :rawValue |
		(selector = #style) 
			ifTrue: [ 
				" style case: read style as a Dictionary and save it in object"
				| styleDictionary |
				styleDictionary := rawValue asDictionary .
				styleDictionary keysDo:[ :aKey | object style at: aKey put: ( styleDictionary at: aKey ) ].
			 ]
			ifFalse: [ 
					(selector = #type) ifFalse: [ 
						(selector = #properties)
							ifTrue: [ 
								"properties case: save properties in object"
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