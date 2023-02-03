import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled8/pages/HomePage.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectItem = 0;
  static const List<Widget> _pages = <Widget>[
    HomePage(),
    HomePage(),
    HomePage(),
  ];

  void _onItemTap(int index){
    setState(() {
      _selectItem = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            body: _pages.elementAt(_selectItem),
            bottomNavigationBar: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                      Icons.home,
                    size: 28,
                  ),
                  label: ''
                ),
                BottomNavigationBarItem(
                    icon: Icon(
                        Icons.message,
                      size: 28,
                    ),
                  label: ''
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person,
                    size: 28,
                    ),
                  label: ''
                ),
              ],
              currentIndex: _selectItem,
              onTap: _onItemTap,
            ),
          ),
        );
      },
    );
  }
}

