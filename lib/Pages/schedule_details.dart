import 'package:flutter/material.dart';
class ScheduleDetails extends StatefulWidget {
  final String day;

  const ScheduleDetails({Key key, this.day}) : super(key: key);

  @override
  _ScheduleDetailsState createState() => _ScheduleDetailsState();
}

class _ScheduleDetailsState extends State<ScheduleDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.day),
      ),
    );
  }
}
