As described on page 162 of "A Mentoring Course on Smalltalk", a naive mirroring of validators to deep domain class hierarchies can get out of hand. A solution is to collapse validators for similar classes into one:

1. For each relevant domain class, implement #validateInTheContextOf: like this:
validateInTheContextOf: aValidatorClass
    super validateInTheContextOf: aValidatorClass.
    aValidatorClass [subclass name]Validation

2. In the validator, implement:
subclassOneValidation
	self [description of]Validation
	
3. In each domain class, implement [description of]Validation from above. n.b. the selector of this message can not begin with #validate