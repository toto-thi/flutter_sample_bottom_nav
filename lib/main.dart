import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testapp_again/pages/Test.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello another navigator",
      theme: ThemeData(primarySwatch: Colors.teal),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static const TextStyle optionalStyle =
      TextStyle(fontSize: 30, color: Colors.brown, fontWeight: FontWeight.bold);
  static List<Widget> widgetOption = <Widget>[
    Text(
      "HomePage",
      style: optionalStyle,
    ),
    Text(
      "Education",
      style: optionalStyle,
    ),
    Text(
      "Hospital",
      style: optionalStyle,
    ),
    TestPage(),
  ];

  void tapping(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home page",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: widgetOption.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              Icons.home,
            ),
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            label: "School",
            icon: Icon(
              Icons.school,
            ),
            backgroundColor: Colors.pink,
          ),
          BottomNavigationBarItem(
            label: "Hospital",
            icon: Icon(
              Icons.local_hospital,
            ),
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            label: "Shopping",
            icon: Icon(
              Icons.shop,
            ),
            backgroundColor: Colors.orange,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.lightBlue[800],
        onTap: tapping,
      ),
    );
  }
}
