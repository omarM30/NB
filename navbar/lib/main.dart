import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:navbar/calender.dart';
import 'package:navbar/home.dart';
import 'package:navbar/scan.dart';
import 'package:navbar/setting.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Home(),
    Scan(),
    Calender(),
    Setting(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(MdiIcons.homeOutline), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(MdiIcons.calendarMonthOutline), label: 'Calender'),
          BottomNavigationBarItem(
              icon: Icon(MdiIcons.qrcodeScan), label: 'Qrcode'),
          BottomNavigationBarItem(
              icon: Icon(MdiIcons.cogOutline), label: 'Setting'),
        ],
        currentIndex: _selectIndex,
        selectedItemColor: Colors.teal[600],
        onTap: _onItemTapped,
      ),
    );
  }
}

@override
Widget build(BuildContext context) {
  return Scaffold(
      body: Center(
    child: Column(
      children: <Widget>[
        Padding(padding: EdgeInsets.all(20)),
        SvgPicture.asset('assets/images/logo1.svg')
      ],
    ),
  ));
}
