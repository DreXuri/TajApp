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
  @JsonKey(name: 'date')
  String get date => throw _privateConstructorUsedError;
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
      @JsonKey(name: 'date') String date,
      @JsonKey(name: 'isCompleted') int isCompleted,
      @JsonKey(name: 'remind') int remind,
      @JsonKey(name: 'repeat') String repeat,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'updatedAt') String updatedAt});
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
    Object? date = null,
    Object? isCompleted = null,
    Object? remind = null,
    Object? repeat = null,
    Object? createdAt = null,
    Object? updatedAt = null,
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
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
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
      @JsonKey(name: 'date') String date,
      @JsonKey(name: 'isCompleted') int isCompleted,
      @JsonKey(name: 'remind') int remind,
      @JsonKey(name: 'repeat') String repeat,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'updatedAt') String updatedAt});
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
    Object? date = null,
    Object? isCompleted = null,
    Object? remind = null,
    Object? repeat = null,
    Object? createdAt = null,
    Object? updatedAt = null,
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
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
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
      @JsonKey(name: 'date') this.date = '',
      @JsonKey(name: 'isCompleted') this.isCompleted = 0,
      @JsonKey(name: 'remind') this.remind = 0,
      @JsonKey(name: 'repeat') this.repeat = '',
      @JsonKey(name: 'createdAt') this.createdAt = '',
      @JsonKey(name: 'updatedAt') this.updatedAt = ''});

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
  @JsonKey(name: 'date')
  final String date;
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
  String toString() {
    return 'Tasks(id: $id, title: $title, description: $description, date: $date, isCompleted: $isCompleted, remind: $remind, repeat: $repeat, createdAt: $createdAt, updatedAt: $updatedAt)';
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
            (identical(other.date, date) || other.date == date) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.remind, remind) || other.remind == remind) &&
            (identical(other.repeat, repeat) || other.repeat == repeat) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, date,
      isCompleted, remind, repeat, createdAt, updatedAt);

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
      @JsonKey(name: 'date') final String date,
      @JsonKey(name: 'isCompleted') final int isCompleted,
      @JsonKey(name: 'remind') final int remind,
      @JsonKey(name: 'repeat') final String repeat,
      @JsonKey(name: 'createdAt') final String createdAt,
      @JsonKey(name: 'updatedAt') final String updatedAt}) = _$_Tasks;

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
  @JsonKey(name: 'date')
  String get date;
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
  @JsonKey(ignore: true)
  _$$_TasksCopyWith<_$_Tasks> get copyWith =>
      throw _privateConstructorUsedError;
}
