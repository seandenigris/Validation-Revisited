as yet unclassified
validate
	"Now, each domain object will know how to validate itself"
	"AbstractDomainObject new validate"

	^ self defaultValidator validate: self.