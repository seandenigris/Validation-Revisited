tests
testValidObject

	| result |
	result := SomeDomainObject valid validate.
	self deny: result hasValidationFailures.
	self assert: result validationFailures isEmpty.