USING: examples.greeter tools.test ;
IN: examples.greeter.tests

{ "Hello, Test" } [ "Test" greeting ] unit-test
{ "Hello, World" } [ "world" greeting ] unit-test

