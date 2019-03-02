import 'package:flutter/material.dart';
import '../blocs/date_time_provider.dart';

class BookButton extends StatelessWidget {
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height / 10;
    final dateTimeBloc = DateTimeProvider.of(context);

    return GestureDetector(
      onTap: () {
        //_selectDate(context);
      },
      child: StreamBuilder(
        stream: dateTimeBloc.submitValid,
        builder: (context, snapshot) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              //borderRadius: BorderRadius.all(Radius.circular(8.0)),
              border: BorderDirectional(
                top: BorderSide(width: 1.0, color: Color(0xffcad8e4)),
              ),
              color: snapshot.hasData ? Color(0xff214899) : Color(0xffcad8e4),
            ),
            height: height,
            //color: Colors.white,
            child: Center(
              child: Text(
                "BOOK NOW",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
