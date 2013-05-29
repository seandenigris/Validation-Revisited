tests
testValidObjectUI

	| object ui |
	object := SomeDomainObject missingClient.
	ui := SomeUIClass on: object.
	ui takeAction.
"	result := object validate.
	self deny: result hasValidationFailures.
	self assert: result validationFailures isEmpty."