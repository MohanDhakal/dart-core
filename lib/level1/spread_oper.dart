void opDemo() async {
  var l1 = Future.delayed(Duration(seconds:1)).then((value) => [1,2,3]);
  var l2 = Future.delayed(Duration(seconds:1)).then((value) => [4,5,6]);
  var result = [...await l1, ...await l2];
  print(result);
}
