void printName(Object anotherName) {
//to check the variable is of specific type
  assert(anotherName is String);

//we can use var to define and initialize a variable

  var name = 'mohan';
  print(name);

//if an object is not restricted to a single type then
//specify the dynamic or Object type
  print(anotherName);
//dynamic type
  dynamic newPerson = 'mohan';
  print(newPerson);

//Note: if any of the variables are uninitialized then
//they are set to null
}
