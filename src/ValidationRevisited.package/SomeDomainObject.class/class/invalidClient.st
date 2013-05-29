instance creation-invalid
invalidClient

	^ self new
			supportCategory: 'UI';
			supportSubCategory: self possibleSubCategories atRandom;
			client: self clientWithoutName;
			date: Date yesterday;
			yourself.