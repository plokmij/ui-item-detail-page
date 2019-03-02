import 'date_time_bloc.dart';
import 'package:flutter/material.dart';
export 'date_time_bloc.dart';

class DateTimeProvider extends InheritedWidget {
  final dateTimeBloc = DateTimeBloc();

  DateTimeProvider({Key key, Widget child}) : super(key: key, child: child);

  bool updateShouldNotify(_) => true;

  static DateTimeBloc of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(DateTimeProvider) as DateTimeProvider).dateTimeBloc;
  }
}
