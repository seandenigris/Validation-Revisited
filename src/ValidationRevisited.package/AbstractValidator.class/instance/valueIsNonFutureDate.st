rules
valueIsNonFutureDate
	
	| isValid |
	isValid := (self value isKindOf: Date) and: [ self value <= Date today ].
	isValid ifFalse: [ self failValidationBecause: self cannotBeInTheFuture ].