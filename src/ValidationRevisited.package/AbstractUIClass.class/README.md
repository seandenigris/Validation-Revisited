I am an abstract base class adding basic validation capabilities to Objects. Just before performing actions based on user input, you would put a guard clause like:
	self domainObjectPassesValidation ifFalse: [ ^ self ].

n.b. I would probably be better as a Trait.