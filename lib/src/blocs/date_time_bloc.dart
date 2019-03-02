import 'dart:async';
import 'package:rxdart/rxdart.dart';

class DateTimeBloc {
  final _startTime = BehaviorSubject();
  final _endTime = BehaviorSubject();

  Stream get startTime => _startTime.stream;
  Stream get endTime => _endTime.stream;

  Function get changeStartTime => _startTime.sink.add;
  Function get changeEndTime => _endTime.sink.add;

  getTime(){
    print(_startTime.value);
    print(_endTime.value);
  }

  dispose(){
    _startTime.close();
    _endTime.close();
  }
}
