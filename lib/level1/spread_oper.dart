void opDemo() async {
  Future<List<int>> l1 = Future.delayed(Duration(seconds:1)).then((value) => [1,2,3]);
  Future<List<int>> l2 = Future.delayed(Duration(seconds:1)).then((value) => [4,5,6]);
  var result = [...await l1, ...await l2];
  print(result);
}
