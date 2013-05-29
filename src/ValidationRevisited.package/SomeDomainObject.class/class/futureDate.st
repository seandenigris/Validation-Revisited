instance creation-invalid
futureDate

	^ self new
			supportCategory: 'UI';
			supportSubCategory: self possibleSubCategories atRandom;
			client: 'Bob';
			date: Date tomorrow;
			yourself.