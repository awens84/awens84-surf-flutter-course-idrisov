import 'dart:collection';

//1.
int a = 0;

void main() {
  //2.
  double b;

  //3.
  var text = "str_format";
  //a = text;  ошибка так как разные типы данных

  //4.
  dynamic dyn = 0;
  print (dyn = text);  // ошибки нет, так как обяъвлена динамическая типизация

  //5.
  final fin = "fin";
  const con = "fin";

  // ошибка в обоих случаях. Const - присваиваемое значение  должно быть доступно в момент компиляции. final можно определить после объявления.
  //fin = "111";
  //con = "111";

  //6.
  int c=5;  // переменная с именем а уже занята
  print( c % 2 == 1 ? "$c нечетное" : "$c четное");

  //7.
  print ("I \u2665 dart");

  //8.a.
  var list = [1,2,3,4,5,6,7,8];

  //8.b.
  print (list.length); //длина списк

  //8.c.
  list.sort((a, b) => b - a);
  print(list);

  //8.d.
  var newList = list.sublist(0, 3);
  print(newList);

  //8.e.
  print(list.indexOf(5));

  //8.f
  list.removeWhere((element) => element > 4);
  print(list);

  //8.g.
  list.removeWhere((element) => element < 4);
  list.addAll([10, 20, 30]);
  print(list);

  //9.a.
  var numberBook = {
    "Иван": 2264865,
    "Татьяна": 89523366684,
    "Олег": 84952256575,
  };
  print (numberBook);

  //9.b.
  numberBook["Екатерина"] = 2359942;

  //9.c.
  numberBook = SplayTreeMap.from(numberBook, (a, b) => b.compareTo(a));
  print(numberBook);

  //10.a.
  Set mySet = {'Москва', 'Вашингтон', 'Париж'};

  //10.b.
  mySet.add('Вашингтон');
  print(mySet.length); // в Set содержатся только уникальные элементы

  String txt = "She sells sea shells on the sea shore;"
  "The shells that she sells are sea shells I'm sure."
  "So if she sells sea shells on the sea shore,"
  "I'm sure that the shells are sea shore shells";
  Iterable<Match> matches = RegExp(r"([\w']+)").allMatches(txt);
  print(matches.length);

  
}
