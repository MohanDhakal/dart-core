//final and const

void checkConst() {
  var foo = const [];
  //variable that has been assigned constants ,can be changed
  foo = [1, 2, 3];
  print(foo);
  //type cast can also be used in cosnt assignment
  const dynamic i = 'mohan';
  const newList = [23, 34, i as String];
  print(newList);
}

void checkFinal() {}
