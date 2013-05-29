instance creation-invalid
missingClient

	^ self new
			supportCategory: 'UI';
			supportSubCategory: self possibleSubCategories atRandom;
			"client: self client;"
			date: Date yesterday;
			yourself.