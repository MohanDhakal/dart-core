
//higher order functions

var decreaseNumber = (int a, int b) {
  return b - a;
};

//get the floor of the divisino

int getFloor(int a, int b) {
  return (b / a).floor();
}

//passing function as an argument
void multiplyResult(int firstValue, int secondValue, floorValue) {
  var result = floorValue(firstValue, secondValue);
  print(result * 2);
}

//returning function

Function taskToDo() {
  Function multiplyNumber = (int num) => num * 4;
  return multiplyNumber;
}

var myfn = taskToDo();

//function return a functio on the basis of status of the task
Function checkTaskStatus(bool done) {
  return (done) ? (int num) => --num : (int num) => num;
}

var mytask = checkTaskStatus(false);

//lexical closoure:
//case 1: A closure is a function that acess to
//the paretnt scope,even after the scope has been closed;
void closure1Check() {
  String message = 'something';
  Function showMessage = () {
    message = 'modified message';
    print(message);
  };
  showMessage();
}

//case 2: A closure is a function object that has acess to variables
//in its lexical scope evene when the fucntion is used outsuide of its original scope

Function cookMeal = () {
  var qty = '0.5 kg';
  Function cookRice = () {
    print('$qty of rice is cooking');
  };
  return cookRice;
};

Function cookDinner=cookMeal();
