collapsing
validateInTheContextOf: aValidatorClass
	"Implement me when validating with a collapsed validator hierarchy

	You can define me in the domain root class to simply return self, and then in the subclasses like:
		super validateInTheContextOf: aValidatorClass.
	    aValidatorClass subclassNameValidation"