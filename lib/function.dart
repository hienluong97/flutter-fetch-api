int add(int a, int b) {
  return a + b;
}

double muliply({double x = 1, double y = 1}) {
  return x * y;
}

sayHello([String name = 'luong']) {
  print('hello $name');
}

getUrl(String sever, {port = 3000}) {
  print('ulr = $sever:$port');
}

getUrl2(String sever, {port = 3000}) => print('ulr = $sever:$port');

String GetDateTimeString({int? day, int? month, int? year}) {
  return ' to day is $year/$month/$day';
}

void doSomething({int para1 = 0, int para2 = 0, Function? completion}) {
  print('do something');
  completion!(2);
}
