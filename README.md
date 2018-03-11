## Installation

```smalltalk
Metacello new
	baseline: 'ValidationRevisited';
	repository: 'github://seandenigris/Validation-Revisited:master/src';
	load.
```

## Motivation

This is a port of the code from the extreme validation section of "A Mentoring Course on Smalltalk", Andres Valloud's OOP bible [see my blog post](http://seandenigris.com/blog/?p=573). 

## Usage

Here is [a short screencast](https://vimeo.com/67244280) of a little UI monitoring the health of a domain object in real-time. 

`#validate` is the main entry point for the framework. You can call this on any domain object and the validation rules will be run. Under the hood are specialized SUnit classes. The `Validator` subclass, a specialized `TestCase`, holds the rules for the object. 

The really cool thing is that the failures are real objects which hold the domain object, the property that failed (called an 'aspect'), and the description. So you could do a lot more than show the description. The idea of ongoingly monitoring the health of models is fascinating. It would be great for SimplePersistence and other serialization libraries to check the model after materializing to make sure everything is as expected. The potential for really non-intrusive UI validation is obvious, and exciting too!

*N.B.* Andres mentioned that he did an implementation in VW called Assessments that went far beyond the book. One more reason to get cross-platform filetree/cypress working ;)
