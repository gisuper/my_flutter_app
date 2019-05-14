import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePickerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DatePickerWidget(),
      ),
    );
  }
}

class DatePickerWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DatePickerState();
  }
}

class DatePickerState extends State<DatePickerWidget> {
  DateTime currentDate = DateTime.now();
  TimeOfDay currentTime = TimeOfDay(hour: 9, minute: 9);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(DateFormat.yMMMMd().format(currentDate)),
        SizedBox(
          height: 20.0,
        ),
        FlatButton.icon(
          onPressed: _selectDate,
          icon: Icon(Icons.timer),
          label: Text("select Date"),
          shape: Border.all(width: 2, color: Colors.black),
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(currentTime.format(context)),
        SizedBox(
          height: 20.0,
        ),
        FlatButton.icon(
          onPressed: _selectTime,
          icon: Icon(Icons.timer),
          label: Text("select time"),
          shape: Border.all(width: 2, color: Colors.black),
        ),
      ],
    );
  }

  void _selectTime() async {
    TimeOfDay time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay(hour: 9, minute: 9),
    );

    setState(() {
      currentTime = time;
    });
    print(time.format(context));
  }

  void _selectDate() async {
    DateTime date = await showDatePicker(
        context: context,
        initialDate: currentDate,
        firstDate: DateTime(1999),
        lastDate: DateTime(2999));

    setState(() {
      currentDate = date;
    });
  }
}
