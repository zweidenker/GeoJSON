tests
testExampleDepartmentsRoundtrip
	| model string model2 string2 |
	model := self parse: self exampleDepartments.
	string := NeoJSONWriter toString: model.
	"model2 := self parse: string.
	string2 := NeoJSONWriter toString: model.
	self assert: string equals: string2"