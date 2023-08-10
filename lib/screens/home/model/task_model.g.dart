// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Tasks _$$_TasksFromJson(Map<String, dynamic> json) => _$_Tasks(
      id: json['id'] as int? ?? 0,
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      date: json['date'] as String? ?? '',
      isCompleted: json['isCompleted'] as int? ?? 0,
      remind: json['remind'] as int? ?? 0,
      repeat: json['repeat'] as String? ?? '',
      createdAt: json['createdAt'] as String? ?? '',
      updatedAt: json['updatedAt'] as String? ?? '',
    );

Map<String, dynamic> _$$_TasksToJson(_$_Tasks instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'date': instance.date,
      'isCompleted': instance.isCompleted,
      'remind': instance.remind,
      'repeat': instance.repeat,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
