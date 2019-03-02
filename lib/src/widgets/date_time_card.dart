import 'package:flutter/material.dart';
import '../blocs/date_time_provider.dart';

class DateTimeCard extends StatelessWidget {
  final TextStyle header = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 18.0,
    color: Colors.white,
  );

  DateTime selectedDate = DateTime.now();
  TimeOfDay initialTime = TimeOfDay.now();
  String s_electedDate = "";
  String selectedTime = "";
  Future<TimeOfDay> _selectTime(BuildContext context) async {
    final TimeOfDay picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay(hour: TimeOfDay.now().hour + 1, minute: 0),
    );
    initialTime = picked;
    selectedTime = picked.format(context);
    return picked;
  }

  Future<DateTime> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2016),
      lastDate: DateTime(2020),
    );
    selectedDate = picked;
    s_electedDate = picked.toString();
    return picked;
  }

  Widget build(BuildContext context) {
    DateTimeBloc dateTimeBloc = DateTimeProvider.of(context);
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.0),
      //padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.white,
      ),
      child: Column(
        children: <Widget>[
          buildDateText(context, dateTimeBloc),
          Divider(
            color: Colors.grey,
            height: 40.0,
          ),
          availability(context),
          Divider(
            color: Colors.grey,
            height: 30.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0,right: 10.0,bottom: 20.0),
            child: buildTimeText(context, dateTimeBloc),
          ),
        ],
      ),
    );
  }

  Widget buildDateText(BuildContext context, DateTimeBloc dateTimeBloc) {
    return GestureDetector(
      onTap: () {
        _selectDate(context).then((value) {
          if (selectedDate.day == DateTime.now().day &&
              selectedDate.month == DateTime.now().month) {
            dateTimeBloc.changeDate("Today");
          } else {
            var date = s_electedDate.split(" ")[0].split("-");
            dateTimeBloc.changeDate(date[2] + "-" + date[1] + "-" + date[0]);
          }
        });
      },
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(bottom: 10.0),
            child: Text("Date"),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black54,
                  offset: Offset(1.0, 2.0),
                )
              ],
              shape: BoxShape.rectangle,
              color: Color(0xffff4c5d),
            ),
            child: StreamBuilder(
              stream: dateTimeBloc.date,
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Text(
                    "Select",
                    style: header,
                  );
                }
                return Text(
                  snapshot.data,
                  style: header,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTimeText(BuildContext context, DateTimeBloc dateTimeBloc) {
    return Row(
      children: <Widget>[
        Expanded(
          child: GestureDetector(
            onTap: () {
              _selectTime(context).then((value) {
                dateTimeBloc.changeStartTime(selectedTime);
                dateTimeBloc.changeEndTime(initialTime
                    .replacing(hour: initialTime.hour + 1)
                    .format(context));
              });
            },
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Text("Start Time"),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        offset: Offset(1.0, 2.0),
                      )
                    ],
                    shape: BoxShape.rectangle,
                    color: Color(0xffff4c5d),
                  ),
                  child: StreamBuilder(
                    stream: dateTimeBloc.startTime,
                    builder: (context, snapshot) {
                      if (!snapshot.hasData) {
                        return Text(
                          "Select",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                          ),
                        );
                      }
                      return Text(
                        snapshot.data,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        Spacer(),
        Expanded(
          child: GestureDetector(
            onTap: () {
              _selectTime(context).then((value) {
                dateTimeBloc.changeEndTime(selectedTime);
              });
            },
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Text("End Time"),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        offset: Offset(1.0, 2.0),
                      )
                    ],
                    shape: BoxShape.rectangle,
                    color: Color(0xffff4c5d),
                  ),
                  child: StreamBuilder(
                    stream: dateTimeBloc.endTime,
                    builder: (context, snapshot) {
                      if (!snapshot.hasData) {
                        return Text(
                          "Select",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                          ),
                        );
                      }
                      return Text(
                        snapshot.data,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget availability(BuildContext context) {
    List<Widget> slots = [];
    for (int i = 0; i < 8; i++) {
      slots.add(buildSlot());
    }
    return Column(
      children: <Widget>[
        SingleChildScrollView(
          padding: EdgeInsets.only(left: 5.0),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: slots,
          ),
        ),
        SingleChildScrollView(
          padding: EdgeInsets.only(left: 40.0),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: slots,
          ),
        ),
        SingleChildScrollView(
          padding: EdgeInsets.only(left: 5.0),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: slots,
          ),
        ),
      ],
    );
  }

  Widget buildSlot() {
    return Container(
      //height: 20.0,
      //width: 80.0,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      margin: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: Color(0xff214899),
        borderRadius: BorderRadius.circular(25.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black54,
            offset: Offset(0.5, 1.0),
          )
        ],
        shape: BoxShape.rectangle,
      ),
      child: Center(
        child: Text(
          "04 PM - 05 PM",
          style: TextStyle(
            color: Colors.white,
            fontSize: 12.0
          ),
        ),
      ),
    );
  }
}
