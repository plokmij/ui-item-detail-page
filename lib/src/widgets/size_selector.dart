import 'package:flutter/material.dart';
import '../blocs/date_time_provider.dart';

class SizeSelector extends StatelessWidget {
  Widget build(BuildContext context) {
    final dateTimeBloc = DateTimeProvider.of(context);
    return Container(
      margin: EdgeInsets.only(bottom: 5.0),
      padding: EdgeInsets.symmetric(vertical: 20.0),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.white,
      ),
      child: buildRow(dateTimeBloc),
    );
  }

  Widget buildRow(DateTimeBloc dateTimeBloc) {
    dateTimeBloc.changSize("30");
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(bottom: 10.0),
          child: Text('Select Size'),
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Column(
                children: <Widget>[
                  StreamBuilder(
                    stream: dateTimeBloc.size,
                    builder: (context, snapshot) {
                      return GestureDetector(
                        onTap: () {
                          dateTimeBloc.changSize("30");
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.0,
                            vertical: 8.0,
                          ),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black54,
                                offset: Offset(1.0, 2.0),
                              )
                            ],
                            shape: BoxShape.rectangle,
                            color: snapshot.data == "30"
                                ? Color(0xffff4c5d)
                                : Color(0xffcad8e4),
                          ),
                          child: Text(
                            "30\"",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  StreamBuilder(
                    stream: dateTimeBloc.size,
                    builder: (context, snapshot) {
                      return GestureDetector(
                        onTap: () {
                          dateTimeBloc.changSize("32");
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.0,
                            vertical: 8.0,
                          ),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black54,
                                offset: Offset(1.0, 2.0),
                              )
                            ],
                            shape: BoxShape.rectangle,
                            color: snapshot.data == "32"
                                ? Color(0xffff4c5d)
                                : Color(0xffcad8e4),
                          ),
                          child: Text(
                            "30\"",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
