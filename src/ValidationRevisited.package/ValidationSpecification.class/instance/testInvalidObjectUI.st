tests
testInvalidObjectUI

	| object ui |
	object := SomeDomainObject missingClient.
	ui := SomeUIClass on: object.
	ui takeAction.
	self assert: (ui highlightedAspects includes: #client).
	self assert: (ui notifications includes: 'client is required.').