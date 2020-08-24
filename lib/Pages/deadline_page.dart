import 'package:flutter/material.dart';
import 'package:school_ui_toolkit/school_ui_toolkit.dart';

class DeadlinePage extends StatefulWidget {
  @override
  _DeadlinePageState createState() => _DeadlinePageState();
}

class _DeadlinePageState extends State<DeadlinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        builder: (context, snapshot) {
          return Calendar(
            startExpanded: true, // set this to false if you need the calendar to be built shrinked (show only active week)
            onDateSelected: (date) {
              print('Selected date: $date');
              // handle date selection
            },
            onNextMonth: (date) {
              print('Next month: $date');
              // handle on next month.
            },
            onPreviousMonth: (date) {
              print('Previous month: $date');
              // handle previous month
            },
            calendarEvents: [
              CalendarEvent.fromDateTime(
                dateTime: DateTime.now(),
                color: SchoolToolkitColors.red,
              ),
            ],
            recurringEventsByDay: [
              CalendarEvent.fromDateTime(
                dateTime: DateTime(2020, 7, 1),
                color: SchoolToolkitColors.blue,
              ),
              CalendarEvent.fromDateTime(
                dateTime: DateTime(2020, 7, 2),
                color: SchoolToolkitColors.red,
              ),
            ],
            recurringEventsByWeekday: [
              CalendarEvent.fromWeekDay(
                weekDay: DateTime.sunday,
                color: SchoolToolkitColors.green,
                holiday: true,
              ),
            ],
          );

        },
      ),
    );
  }
}
