testing
validate: anObject
	"AbstractValidator validate: Object new"

	| validationSuite |
	validationSuite := self validationSuiteFor: anObject.
	^ validationSuite run.