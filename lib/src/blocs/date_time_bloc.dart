import 'dart:async';
import 'package:rxdart/rxdart.dart';

class DateTimeBloc {
  final _startTime = BehaviorSubject();
  final _endTime = BehaviorSubject();
  final _date = BehaviorSubject();
  final _size = BehaviorSubject();

  Stream get startTime => _startTime.stream;
  Stream get endTime => _endTime.stream;
  Stream get date => _date.stream;
  Stream get size => _size.stream;

  Function get changeStartTime => _startTime.sink.add;
  Function get changeEndTime => _endTime.sink.add;
  Function get changeDate => _date.sink.add;
  Function get changSize => _size.sink.add;

  getTime() {
    print(_startTime.value);
    print(_endTime.value);
    print(_size.value);
  }

  dispose() {
    _size.close();
    _startTime.close();
    _endTime.close();
    _date.close();
  }
}
