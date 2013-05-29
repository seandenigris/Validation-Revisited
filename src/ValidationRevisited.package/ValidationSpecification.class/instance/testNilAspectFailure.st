tests
testNilAspectFailure

	| result object onlyFailure |
	object := SomeDomainObject missingClient.
	result := object validate.
	self assert: result hasValidationFailures.
	
	onlyFailure := result validationFailures atRandom.
	self assert: onlyFailure object equals: object.
	self assert: onlyFailure aspect equals: #client.
	self assert: onlyFailure description equals: 'client is required.'.