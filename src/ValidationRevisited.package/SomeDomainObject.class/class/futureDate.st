instance creation-invalid
futureDate

	^ self new
			supportCategory: 'UI';
			supportSubCategory: self possibleSubCategories atRandom;
			client: self client;
			date: Date tomorrow;
			yourself.