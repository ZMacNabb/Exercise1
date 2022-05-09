import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Generic Burger Place',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final products = const ["Single Burger", "Double Burger", "Triple Burger"
    , "Fries", "Onion Rings", "Soda", "Milkshake"];
  List<int> money = [4, 6, 8, 1 ,2 ,1 ,2];
  final price = const ["\$4","\$6"  ,"\$8" ,"\$1" ,"\$2" ,"\$1" , "\$2"];

  @override
  Widget build(BuildContext context){
    const title ='Generic Burger Place';
    return MaterialApp(
      title: title,
      home: Scaffold(

        body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(products.length, (index) {
            return FlatButton (
              child: Column (

                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(products[index]),
                  Text(price[index]),

                ],
              ),
              onPressed: () async {
                _counter=_counter+money[index];
              },
            );
          }),
        ),
      ),
    );
    print(_counter);
  }
}
