initialization
initializeWidgets

	failureList := self newList
		items: model validate failures;
		displayBlock: [ :f | f description ];
		yourself.
		
	model on: Announcement send: #modelChanged: to: self.