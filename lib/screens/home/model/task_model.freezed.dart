// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TaskModel _$TaskModelFromJson(Map<String, dynamic> json) {
  return _TaskModel.fromJson(json);
}

/// @nodoc
mixin _$TaskModel {
  @JsonKey(name: 'status_code')
  int get statusCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  Tasks get tasks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskModelCopyWith<TaskModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskModelCopyWith<$Res> {
  factory $TaskModelCopyWith(TaskModel value, $Res Function(TaskModel) then) =
      _$TaskModelCopyWithImpl<$Res, TaskModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status_code') int statusCode,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'data') Tasks tasks});

  $TasksCopyWith<$Res> get tasks;
}

/// @nodoc
class _$TaskModelCopyWithImpl<$Res, $Val extends TaskModel>
    implements $TaskModelCopyWith<$Res> {
  _$TaskModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? message = null,
    Object? tasks = null,
  }) {
    return _then(_value.copyWith(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as Tasks,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TasksCopyWith<$Res> get tasks {
    return $TasksCopyWith<$Res>(_value.tasks, (value) {
      return _then(_value.copyWith(tasks: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TaskModelCopyWith<$Res> implements $TaskModelCopyWith<$Res> {
  factory _$$_TaskModelCopyWith(
          _$_TaskModel value, $Res Function(_$_TaskModel) then) =
      __$$_TaskModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status_code') int statusCode,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'data') Tasks tasks});

  @override
  $TasksCopyWith<$Res> get tasks;
}

/// @nodoc
class __$$_TaskModelCopyWithImpl<$Res>
    extends _$TaskModelCopyWithImpl<$Res, _$_TaskModel>
    implements _$$_TaskModelCopyWith<$Res> {
  __$$_TaskModelCopyWithImpl(
      _$_TaskModel _value, $Res Function(_$_TaskModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? message = null,
    Object? tasks = null,
  }) {
    return _then(_$_TaskModel(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as Tasks,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TaskModel implements _TaskModel {
  const _$_TaskModel(
      {@JsonKey(name: 'status_code') this.statusCode = 0,
      @JsonKey(name: 'message') this.message = '',
      @JsonKey(name: 'data') this.tasks = const Tasks()});

  factory _$_TaskModel.fromJson(Map<String, dynamic> json) =>
      _$$_TaskModelFromJson(json);

  @override
  @JsonKey(name: 'status_code')
  final int statusCode;
  @override
  @JsonKey(name: 'message')
  final String message;
  @override
  @JsonKey(name: 'data')
  final Tasks tasks;

  @override
  String toString() {
    return 'TaskModel(statusCode: $statusCode, message: $message, tasks: $tasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskModel &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.tasks, tasks) || other.tasks == tasks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, statusCode, message, tasks);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskModelCopyWith<_$_TaskModel> get copyWith =>
      __$$_TaskModelCopyWithImpl<_$_TaskModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskModelToJson(
      this,
    );
  }
}

abstract class _TaskModel implements TaskModel {
  const factory _TaskModel(
      {@JsonKey(name: 'status_code') final int statusCode,
      @JsonKey(name: 'message') final String message,
      @JsonKey(name: 'data') final Tasks tasks}) = _$_TaskModel;

  factory _TaskModel.fromJson(Map<String, dynamic> json) =
      _$_TaskModel.fromJson;

  @override
  @JsonKey(name: 'status_code')
  int get statusCode;
  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(name: 'data')
  Tasks get tasks;
  @override
  @JsonKey(ignore: true)
  _$$_TaskModelCopyWith<_$_TaskModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Tasks _$TasksFromJson(Map<String, dynamic> json) {
  return _Tasks.fromJson(json);
}

/// @nodoc
mixin _$Tasks {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  String get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'isCompleted')
  int get isCompleted => throw _privateConstructorUsedError;
  @JsonKey(name: 'remind')
  int get remind => throw _privateConstructorUsedError;
  @JsonKey(name: 'repeat')
  String get repeat => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  String get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'subscription')
  bool get subscription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TasksCopyWith<Tasks> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksCopyWith<$Res> {
  factory $TasksCopyWith(Tasks value, $Res Function(Tasks) then) =
      _$TasksCopyWithImpl<$Res, Tasks>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'data') String data,
      @JsonKey(name: 'isCompleted') int isCompleted,
      @JsonKey(name: 'remind') int remind,
      @JsonKey(name: 'repeat') String repeat,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'updatedAt') String updatedAt,
      @JsonKey(name: 'subscription') bool subscription});
}

/// @nodoc
class _$TasksCopyWithImpl<$Res, $Val extends Tasks>
    implements $TasksCopyWith<$Res> {
  _$TasksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? data = null,
    Object? isCompleted = null,
    Object? remind = null,
    Object? repeat = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? subscription = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as int,
      remind: null == remind
          ? _value.remind
          : remind // ignore: cast_nullable_to_non_nullable
              as int,
      repeat: null == repeat
          ? _value.repeat
          : repeat // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      subscription: null == subscription
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TasksCopyWith<$Res> implements $TasksCopyWith<$Res> {
  factory _$$_TasksCopyWith(_$_Tasks value, $Res Function(_$_Tasks) then) =
      __$$_TasksCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'data') String data,
      @JsonKey(name: 'isCompleted') int isCompleted,
      @JsonKey(name: 'remind') int remind,
      @JsonKey(name: 'repeat') String repeat,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'updatedAt') String updatedAt,
      @JsonKey(name: 'subscription') bool subscription});
}

/// @nodoc
class __$$_TasksCopyWithImpl<$Res> extends _$TasksCopyWithImpl<$Res, _$_Tasks>
    implements _$$_TasksCopyWith<$Res> {
  __$$_TasksCopyWithImpl(_$_Tasks _value, $Res Function(_$_Tasks) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? data = null,
    Object? isCompleted = null,
    Object? remind = null,
    Object? repeat = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? subscription = null,
  }) {
    return _then(_$_Tasks(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as int,
      remind: null == remind
          ? _value.remind
          : remind // ignore: cast_nullable_to_non_nullable
              as int,
      repeat: null == repeat
          ? _value.repeat
          : repeat // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      subscription: null == subscription
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Tasks implements _Tasks {
  const _$_Tasks(
      {@JsonKey(name: 'id') this.id = 0,
      @JsonKey(name: 'title') this.title = '',
      @JsonKey(name: 'description') this.description = '',
      @JsonKey(name: 'data') this.data = '',
      @JsonKey(name: 'isCompleted') this.isCompleted = 0,
      @JsonKey(name: 'remind') this.remind = 0,
      @JsonKey(name: 'repeat') this.repeat = '',
      @JsonKey(name: 'createdAt') this.createdAt = '',
      @JsonKey(name: 'updatedAt') this.updatedAt = '',
      @JsonKey(name: 'subscription') this.subscription = false});

  factory _$_Tasks.fromJson(Map<String, dynamic> json) =>
      _$$_TasksFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'data')
  final String data;
  @override
  @JsonKey(name: 'isCompleted')
  final int isCompleted;
  @override
  @JsonKey(name: 'remind')
  final int remind;
  @override
  @JsonKey(name: 'repeat')
  final String repeat;
  @override
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  @override
  @JsonKey(name: 'subscription')
  final bool subscription;

  @override
  String toString() {
    return 'Tasks(id: $id, title: $title, description: $description, data: $data, isCompleted: $isCompleted, remind: $remind, repeat: $repeat, createdAt: $createdAt, updatedAt: $updatedAt, subscription: $subscription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Tasks &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.remind, remind) || other.remind == remind) &&
            (identical(other.repeat, repeat) || other.repeat == repeat) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.subscription, subscription) ||
                other.subscription == subscription));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, data,
      isCompleted, remind, repeat, createdAt, updatedAt, subscription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TasksCopyWith<_$_Tasks> get copyWith =>
      __$$_TasksCopyWithImpl<_$_Tasks>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TasksToJson(
      this,
    );
  }
}

abstract class _Tasks implements Tasks {
  const factory _Tasks(
      {@JsonKey(name: 'id') final int id,
      @JsonKey(name: 'title') final String title,
      @JsonKey(name: 'description') final String description,
      @JsonKey(name: 'data') final String data,
      @JsonKey(name: 'isCompleted') final int isCompleted,
      @JsonKey(name: 'remind') final int remind,
      @JsonKey(name: 'repeat') final String repeat,
      @JsonKey(name: 'createdAt') final String createdAt,
      @JsonKey(name: 'updatedAt') final String updatedAt,
      @JsonKey(name: 'subscription') final bool subscription}) = _$_Tasks;

  factory _Tasks.fromJson(Map<String, dynamic> json) = _$_Tasks.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'data')
  String get data;
  @override
  @JsonKey(name: 'isCompleted')
  int get isCompleted;
  @override
  @JsonKey(name: 'remind')
  int get remind;
  @override
  @JsonKey(name: 'repeat')
  String get repeat;
  @override
  @JsonKey(name: 'createdAt')
  String get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  String get updatedAt;
  @override
  @JsonKey(name: 'subscription')
  bool get subscription;
  @override
  @JsonKey(ignore: true)
  _$$_TasksCopyWith<_$_Tasks> get copyWith =>
      throw _privateConstructorUsedError;
}
