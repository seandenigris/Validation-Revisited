instance creation-valid
today

	^ self new
			supportCategory: 'UI';
			supportSubCategory: self possibleSubCategories atRandom;
			client: 'Bob';
			date: Date today;
			yourself.