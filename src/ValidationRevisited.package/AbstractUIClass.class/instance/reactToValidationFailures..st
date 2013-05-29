private
reactToValidationFailures: aCollection

	| failure |
	failure := aCollection atRandom. "SUnit stores failures in aSet, so we can't send #first"
	self inform: failure description.
	self highlightWidgetFor: failure aspect.