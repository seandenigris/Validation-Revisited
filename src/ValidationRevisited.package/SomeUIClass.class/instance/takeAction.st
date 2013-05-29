actions
takeAction
	"Compare to SomeUIClassBefore>>takeAction"

	self domainObjectPassesValidation ifFalse: [ ^ self ].
	self basicTakeAction.