initialization
initializeWidgets

	self instantiateModels: #(
		failureList ListComposableModel
	).
	
	failureList
		items: model validate failures;
		displayBlock: [ :f | f description ].
		
	model on: Announcement send: #modelChanged: to: self.