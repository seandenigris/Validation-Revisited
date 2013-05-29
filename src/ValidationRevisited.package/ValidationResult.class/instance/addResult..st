private
addResult: aValidationResult

	self flag: 'I don''t think this is right, but after seeing Andres'' amazing vw validations implementation, I''m stopping work on this for now'.
	aValidationResult failures do: [ :e | self addFailure: e ].
	aValidationResult passed do: [ :e | self addError: e ].
	aValidationResult errors do: [ :e | self addPass: e ].
	aValidationResult skipped do: [ :e | self addSkip: e ].