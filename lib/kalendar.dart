import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';


class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Heute'),
      ),

      body: SfCalendar(
        view: CalendarView.month,
        monthViewSettings: const MonthViewSettings(
        navigationDirection: MonthNavigationDirection.vertical),
        firstDayOfWeek: 1, // Monday
        selectionDecoration: BoxDecoration(
          color: Colors.grey,
          border: Border.all(color: Colors.pinkAccent,width: 2),
          borderRadius: BorderRadius.circular(2),
          shape: BoxShape.circle,
        ),
        headerStyle:const CalendarHeaderStyle(
          textAlign: TextAlign.center,
          backgroundColor: Colors.white,

        ),
        todayHighlightColor: Colors.pinkAccent,
        cellBorderColor: Colors.grey,

      ),
    );
  }
}
