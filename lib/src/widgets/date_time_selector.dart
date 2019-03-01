import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DateTimeSelector extends StatelessWidget {
  final TextStyle header = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20.0,
  );

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical:5.0),
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Column(
        children: <Widget>[
          buildDateSelector(),
        ],
      ),
    );
  }

  Widget buildDateSelector() {
    return Column(
      children: <Widget>[
        Text('Select Date',style: header,),
        Container(
          height: 100.0,
          child: CupertinoDatePicker(
            mode: CupertinoDatePickerMode.date,
            initialDateTime: DateTime.now(),
            onDateTimeChanged: (DateTime newDate) {
              print(newDate);
            },
          ),
        )
      ],
    );
  }

  Widget timeSelector(){
    return Container(
      height: 100.0,
      child: CupertinoDatePicker(
        mode: CupertinoDatePickerMode.time,
        initialDateTime: DateTime.now(),
        onDateTimeChanged: (DateTime newTime){
          print(newTime);
        },
      ),
    );
  }
}
