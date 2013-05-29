instance creation
openExample
	"Try some of the following in the inspector that pops up and watch the dashboard monitor the model's health:
		self client: nil.
		self client: 'Bob'.
		self date: nil.
		self date: Date tomorrow.
		self date: Date today.
		self supportCategory: nil.
		self supportCategory: 'look and feel'.
"

	| object |
	object := SomeDomainObject valid.
	object inspect.
	^ self openOn: object.