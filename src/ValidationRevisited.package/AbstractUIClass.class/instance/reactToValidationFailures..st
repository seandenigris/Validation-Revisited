as yet unclassified
reactToValidationFailures: aCollection

	| failure |
	failure := aCollection first.
	self inform: failure descriptionText.
	self highlightWidgetFor: failure aspectForReporting.