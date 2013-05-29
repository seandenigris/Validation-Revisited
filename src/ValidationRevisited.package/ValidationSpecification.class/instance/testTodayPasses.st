tests
testTodayPasses

	| result |
	result := SomeDomainObject today validate.
	self deny: result hasValidationFailures.
	self assert: result validationFailures isEmpty.