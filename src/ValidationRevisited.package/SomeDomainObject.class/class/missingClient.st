instance creation-invalid
missingClient

	^ self new
			supportCategory: 'UI';
			supportSubCategory: self possibleSubCategories atRandom;
			"client: 'Bob';"
			date: Date yesterday;
			yourself.