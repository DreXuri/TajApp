import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'code_provider.g.dart';

@riverpod
class CodeState extends _$CodeState {
  @override
  String build() {
    return '';
  }

  void setStart(String newState) {
    state = newState;
  }
}
