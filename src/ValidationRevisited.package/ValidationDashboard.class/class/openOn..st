instance creation
openOn: anObject

	^ self basicNew
			model: anObject;
			initialize;
			openWithSpec.