tests
testExampleDepartmentsRoundtrip
	| model string string2 |
	model := self parse: self exampleDepartments.
	string := NeoJSONWriter toString: model.
	string2 := NeoJSONWriter toString: model.
	self assert: string equals: string2