// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaskModel _$$_TaskModelFromJson(Map<String, dynamic> json) => _$_TaskModel(
      statusCode: json['status_code'] as int? ?? 0,
      message: json['message'] as String? ?? '',
      tasks: json['data'] == null
          ? const Tasks()
          : Tasks.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TaskModelToJson(_$_TaskModel instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.tasks,
    };

_$_Tasks _$$_TasksFromJson(Map<String, dynamic> json) => _$_Tasks(
      id: json['id'] as int? ?? 0,
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      data: json['data'] as String? ?? '',
      isCompleted: json['isCompleted'] as int? ?? 0,
      remind: json['remind'] as int? ?? 0,
      repeat: json['repeat'] as String? ?? '',
      createdAt: json['createdAt'] as String? ?? '',
      updatedAt: json['updatedAt'] as String? ?? '',
      subscription: json['subscription'] as bool? ?? false,
    );

Map<String, dynamic> _$$_TasksToJson(_$_Tasks instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'data': instance.data,
      'isCompleted': instance.isCompleted,
      'remind': instance.remind,
      'repeat': instance.repeat,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'subscription': instance.subscription,
    };
