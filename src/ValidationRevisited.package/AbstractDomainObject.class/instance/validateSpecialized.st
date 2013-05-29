collapsing
validateSpecialized
	"Send me to validate domain objects with collapsed validator hierarchies"

	self flag: 'I don''t know how this specialized stuff is supposed to work and I don''t need it right now. See page 162 of "A Mentoring Course on Smalltalk" for more info'.
	^ self defaultValidator validateSpecialized: self.