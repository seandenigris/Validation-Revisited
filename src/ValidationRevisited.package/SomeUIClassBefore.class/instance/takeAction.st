actions
takeAction

	self domainObject isValid ifFalse: [
		self complainBecause: 'Validation failed'.
		^ self ].
	self basicTakeAction.