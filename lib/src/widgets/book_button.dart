import 'package:flutter/material.dart';
import '../blocs/date_time_provider.dart';
import '../styles/styles.dart';

class BookButton extends StatelessWidget {
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height / 12;
    final dateTimeBloc = DateTimeProvider.of(context);
    
    return GestureDetector(
      onTap: () {
        dateTimeBloc.getBookingDetails();
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
                top: BorderSide(width: 1.0, color: Colours.themeGrey),
              ),
              color: snapshot.hasData ? Colours.primaryColor : Colours.themeGrey,
            ),
            height: height,
            //color: Colors.white,
            child: Center(
              child: Text(
                "BOOK NOW",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w500,
                  color: Colours.white,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
