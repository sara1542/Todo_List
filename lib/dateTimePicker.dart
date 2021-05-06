import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:task4/model/task.dart';
class  DateTimePickerWidget extends StatefulWidget {
  @override
  _DateTimePickerWidgetState createState() => _DateTimePickerWidgetState();
}

class _DateTimePickerWidgetState extends State<DateTimePickerWidget> {
  DateTime selecedDate = DateTime.now();
  DateTime selecedTime = DateTime.now();
  final DateFormat dateFormat = DateFormat('d MMMM');

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text('Choose your date&Time'),
          onPressed: () async {
            final selectedDate = await _selectDateTime(context);
            if (selectedDate == null) return;
            print(selectedDate);

            final selectedTime = await _selectTime(context);
            if (selectedTime == null) return;
            print(selectedTime);

            setState(() {
              this.selecedDate=DateTime(
                selectedDate.year,
                selectedDate.month,
                selectedDate.day,
                selectedTime.hour,
                selectedTime.minute,
              );
              Task.dates.add(dateFormat.format(selectedDate));
              Task.times.add(selectedTime.format(context));
            });

          },
        ),
      ],
    );
  }

  Future<TimeOfDay> _selectTime(BuildContext context) {
    final now = DateTime.now();
    return showTimePicker(
      context: context,
      initialTime: TimeOfDay(hour: now.hour, minute: now.minute),
    );
  }

  Future<DateTime> _selectDateTime(BuildContext context) =>
      showDatePicker(
          context: context,
          initialDate: DateTime.now().add(Duration(seconds: 1)),
          firstDate: DateTime.now(),
          lastDate: DateTime(2100)
      );

}