SUnit-Core
sunitAnnounce: aTestCase toResult: aTestResult

	aTestResult addFailure: self validationFailure.
	self sunitExitWith: false