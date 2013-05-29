I am an example of how lint rules might look in this framework. On page 162 of "A Mentoring Course on Smalltalk", Adres dreams about a similar, but higher-level, validator reifying design patterns.

Examples (DoIt):
	(self validate: PoorlyDesignedClass>>#methodWithInvalidSuperSend) explore.
or
	(self validate: PoorlyDesignedClass>>#methodReturningFromExceptionHandler) explore.