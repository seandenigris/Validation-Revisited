rules
validateSuperSend

	| ast invalidSuperSends |
	ast := object parseTree.
	invalidSuperSends := ast superMessages select: [ :any | any ~= ast selector ].
	invalidSuperSends notEmpty ifTrue: [
	self failValidationBecause: self shouldNotSuperSendDifferentMessage ].