import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student_galala_app/Pages/schedule_details.dart';

class SchedulePage extends StatefulWidget {
  SchedulePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SchedulePageState createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => ScheduleDetails(
                    day: "Saturday",
                  )),
                );
              },
              child: ListTile(
                  leading: Text(
                "Saturday",
                style: TextStyle(fontSize: 25),
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => ScheduleDetails(
                    day: "Sunday",
                  )),
                );
              },
              child: ListTile(
                  leading: Text(
                "Sunday",
                style: TextStyle(fontSize: 25),
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => ScheduleDetails(
                    day: "Monday",
                  )),
                );
              },
              child: ListTile(
                  leading: Text(
                "Monday",
                style: TextStyle(fontSize: 25),
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => ScheduleDetails(
                    day: "Tuesday",
                  )),
                );
              },
              child: ListTile(
                  leading: Text(
                "Tuesday",
                style: TextStyle(fontSize: 25),
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => ScheduleDetails(
                    day: "Wednesday",
                  )),
                );
              },
              child: ListTile(
                  leading: Text(
                "Wednesday",
                style: TextStyle(fontSize: 25),
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => ScheduleDetails(
                    day: "Thursday",
                  )),
                );
              },
              child: ListTile(
                  leading: Text(
                "Thursday",
                style: TextStyle(fontSize: 25),
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => ScheduleDetails(
                    day: "Friday",
                  )),
                );
              },
              child: ListTile(
                  leading: Text(
                "Friday",
                style: TextStyle(fontSize: 25),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
