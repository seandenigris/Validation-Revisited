rules
validateOnError

	| sendsOfOnDo ast messageSends |
	ast := object parseTree.
	messageSends := ast statements select: [ :e | e isMessage ].
	sendsOfOnDo := messageSends select: [ :any | any selector = #on:do: ].
	sendsOfOnDo do: [ :eachSend |
		| exceptionHandler returnsFromHandler |
		exceptionHandler := eachSend arguments second.
		returnsFromHandler := exceptionHandler allChildren select: [ :any | any isReturn ].
		returnsFromHandler notEmpty ifTrue: [
			self failValidationBecause: self shouldNotReturnFromExceptionHandler ] ].