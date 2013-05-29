accessing
testSelectors

	^ (self selectors select: [ :each | (each beginsWith: 'validate') and: [each numArgs isZero]])