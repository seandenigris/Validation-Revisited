rules
valueIsDefined

	self value isNil ifTrue: [ self failValidationBecause: self isRequired ].