private
failValidationBecause: aString

	| validationFailure exception |
	validationFailure := ValidationFailure new
		object: self object;
		aspect: self aspectForReporting;
		description: aString;
		yourself.
	exception := ValidationFailureException new.
	exception validationFailure: validationFailure.
	exception signal.