import 'package:meta/meta.dart';
//Named Parameters
//by default parameters are optional in named ones and adding @required
//marks the parameter as madatory and throws error

void enableFlags({bool bold = true, @required bool hidden}) {
  // assert(hidden != null);
  if (bold) {
    print('bold');
  }
  print(hidden);
}

void defineUser(String name, String address, [String gender = 'female']) {
  print('this is $name ,i live in $address');
  print((gender != null) ? 'my gender is $gender' : '');
}

//arrow syntax for function
int myFxn() => 1;

