tests
testExampleDepartments
	| model |
	model := self parse: self exampleDepartments.
	self assert: model class equals: GJFeatureCollection.
	self assert: model features size equals: 96