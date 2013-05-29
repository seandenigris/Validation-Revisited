tests
testDelegationFailure

	| result object onlyFailure |
	object := SomeDomainObject invalidClient.
	result := object validate.
	self assert: result hasValidationFailures.
	
	onlyFailure := result validationFailures atRandom.
	self assert: onlyFailure object equals: object.
	self assert: onlyFailure aspect equals: #client.
	self assert: onlyFailure description equals: 'client is required.'.