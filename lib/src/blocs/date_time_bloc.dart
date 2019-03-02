import 'dart:async';
import 'package:rxdart/rxdart.dart';

class DateTimeBloc {
  final _startTime = BehaviorSubject();
  final _endTime = BehaviorSubject();
  final _date = BehaviorSubject();

  Stream get startTime => _startTime.stream;
  Stream get endTime => _endTime.stream;
  Stream get date => _date.stream;

  Function get changeStartTime => _startTime.sink.add;
  Function get changeEndTime => _endTime.sink.add;
  Function get changeDate => _date.sink.add; 

  getTime() {
    print(_startTime.value);
    print(_endTime.value);
  }

  dispose() {
    _startTime.close();
    _endTime.close();
    _date.close();
  }
}
