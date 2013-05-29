poorly designed
methodReturningFromExceptionHandler

	[ self doSomething ]
		on: Error
		do: [ :ex | ^ nil ].