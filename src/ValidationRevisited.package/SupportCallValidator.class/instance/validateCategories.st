validations
validateCategories
	"Discussed on page 150 - 151. Category and sub-category are handled together bcause they are interdependent - it makes no sense to verify the sub-category if the category hasn't been chosen yet"

	| subCategories |
	self aspect: #supportCategory.
	self aspectForReporting: #supportCategoryDescription.
	self prettyPrint: 'Category'.
	self valueIsDefined.
	subCategories := self object possibleSubCategories.
	subCategories isEmpty ifFalse: [
		self aspect: #supportSubCategory.
		self aspectForReporting: #supportSubCategoryDescription.
		self prettyPrint: 'Subcategory'.
		self valueIsDefined ].