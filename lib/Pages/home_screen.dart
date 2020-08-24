import 'package:bottom_ani_nav_bar/bottom_ani_nav_bar.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:student_galala_app/Pages/deadline_page.dart';
import 'package:student_galala_app/Pages/schedule_page.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(color: Colors.blueAccent);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(title: Text(""),),
          body: IndexedStack(index: _currentIndex, children: [
            SchedulePage(),
            DeadlinePage(),
            Scaffold(
                body: Center(
                    child: Text(
                      "",
                      style: textStyle,
                    ))),
            Scaffold(
                body: Center(
                    child: Text(
                      "",
                      style: textStyle,
                    ))),
          ]),
          bottomNavigationBar: BottomAniNavBar(
              unselectedItemColor: Colors.red,
              currentIndex: _currentIndex,
              onTap: (int index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.apps),
                  title: Text(
                    'Schedule',
                    style: textStyle,
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.access_alarms),
                  title: Text(
                    'Deadlines',
                    style: textStyle,
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.description),
                  title: Text(
                    'Grades',
                    style: textStyle,
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.adjust),
                  title: Text(
                    'Attendance',
                    style: textStyle,
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.add_call),
                  title: Text(
                    'Contact us',
                    style: textStyle,
                  ),
                ),
              ]),
        ));
  }
}