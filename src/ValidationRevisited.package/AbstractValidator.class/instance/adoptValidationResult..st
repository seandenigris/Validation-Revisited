private
adoptValidationResult: aValidationResult

	| exception |
	exception := ValidationResultAdoption new.
	exception validationResults: aValidationResult.
	exception signal.