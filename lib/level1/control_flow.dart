void checkControlFlow() {

  var listOfPerson = [
    {'name': 'mohan', 'age': 12, 'class': 12},
    {'name': 'kumar', 'age': 21, 'class': 16, 'gender': 'female'},
    {'name': 'dhakal', 'age': 16, 'class': 11}
  ];

  for (var person in listOfPerson) {
    print(person.putIfAbsent('gender', () => 'male'));
  }
  
  listOfPerson.forEach((element)=>print(element));
}

//functions as a first class object

void printElement(element) {
  print(element);
}
