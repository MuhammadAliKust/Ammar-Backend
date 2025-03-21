// To parse this JSON data, do
//
//     final taskModel = taskModelFromJson(jsonString);

import 'dart:convert';

TaskModel taskModelFromJson(String str) => TaskModel.fromJson(json.decode(str));

String taskModelToJson(TaskModel data) => json.encode(data.toJson());

class TaskModel {
  final String? docId;
  final String? title;
  final String? description;
  final int? createdAt;
  final bool? isComplete;

  TaskModel({
    this.docId,
    this.title,
    this.description,
    this.createdAt,
    this.isComplete,
  });

  factory TaskModel.fromJson(Map<String, dynamic> json) => TaskModel(
    docId: json["docID"],
    title: json["title"],
    description: json["description"],
    createdAt: json["createdAt"],
    isComplete: json["isComplete"],
  );

  Map<String, dynamic> toJson() => {
    "docID": docId,
    "title": title,
    "description": description,
    "createdAt": createdAt,
    "isComplete": isComplete,
  };
}
