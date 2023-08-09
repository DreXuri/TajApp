// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_model.freezed.dart';
part 'task_model.g.dart';

@freezed
class TaskModel with _$TaskModel {
  const factory TaskModel({
    @JsonKey(name: 'status_code') @Default(0) int statusCode,
    @JsonKey(name: 'message') @Default('') String message,
    @JsonKey(name: 'data') @Default(Tasks()) Tasks tasks,
  }) = _TaskModel;

  factory TaskModel.fromJson(Map<String, dynamic> json) =>
      _$TaskModelFromJson(json);
}

@freezed
class Tasks with _$Tasks {
  const factory Tasks({
    @JsonKey(name: 'id') @Default(0) int id,
    @JsonKey(name: 'title') @Default('') String title,
    @JsonKey(name: 'description') @Default('') String description,
    @JsonKey(name: 'data') @Default('') String data,
    @JsonKey(name: 'isCompleted') @Default(0) int isCompleted,
    @JsonKey(name: 'remind') @Default(0) int remind,
    @JsonKey(name: 'repeat') @Default('') String repeat,
    @JsonKey(name: 'createdAt') @Default('') String createdAt,
    @JsonKey(name: 'updatedAt') @Default('') String updatedAt,
    @JsonKey(name: 'subscription') @Default(false) bool subscription,
  }) = _Tasks;

  factory Tasks.fromJson(Map<String, dynamic> json) => _$TasksFromJson(json);
}
