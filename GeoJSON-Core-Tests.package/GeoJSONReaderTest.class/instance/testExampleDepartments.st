tests
testExampleDepartments
	| model |
	model := self parse: self exampleDepartments.
	self assert: model class equals: OGCFeatureCollection.
	self assert: model features size equals: 96