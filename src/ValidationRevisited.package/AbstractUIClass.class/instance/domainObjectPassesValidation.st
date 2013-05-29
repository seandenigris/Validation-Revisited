as yet unclassified
domainObjectPassesValidation

	| result |
	result := self domainObject validate.
	result hasValidationFailures ifFalse: [ ^ true ].
	self reactToValidationFailures: result validationFailures.
	^ false.