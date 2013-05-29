tests
testFutureDateFailure

	| result object onlyFailure |
	object := SomeDomainObject futureDate.
	result := object validate.
	self assert: result hasValidationFailures.
	
	onlyFailure := result validationFailures atRandom.
	self assert: onlyFailure object equals: object.
	self assert: onlyFailure aspect equals: #date.
	self assert: onlyFailure description equals: 'date cannot be in the future.'.