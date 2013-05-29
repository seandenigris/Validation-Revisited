tests
testInvalidObject

	| result object onlyFailure |
	object := SomeDomainObject invalid.
	result := object validate.
	self assert: result hasValidationFailures.
	
	onlyFailure := result validationFailures atRandom.
	self assert: onlyFailure object = object.
	self assert: onlyFailure aspect = #client.
	self assert: onlyFailure description = 'client is required.'.