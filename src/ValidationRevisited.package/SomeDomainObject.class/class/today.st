instance creation-valid
today

	^ self new
			supportCategory: 'UI';
			supportSubCategory: self possibleSubCategories atRandom;
			client: self client;
			date: Date today;
			yourself.