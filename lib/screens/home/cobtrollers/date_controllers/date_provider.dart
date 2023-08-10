import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'date_provider.g.dart';

@riverpod
class DateState extends _$DateState {
  @override
  String build() {
    return '';
  }

  void setDate(String newState) {
    state = newState;
  }
}

@riverpod
class TimeStartState extends _$TimeStartState {
  @override
  String build() {
    return '';
  }

  void setStartTime(String newState) {
    state = newState;
  }
}

@riverpod
class TimeEndState extends _$TimeEndState {
  @override
  String build() {
    return '';
  }

  void setEndDate(String newState) {
    state = newState;
  }
}
