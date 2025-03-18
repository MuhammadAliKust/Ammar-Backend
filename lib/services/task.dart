import 'package:ammar_backend/models/task.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TaskServices {
  ///Create Task
  Future createTask(TaskModel model) async {
    return await FirebaseFirestore.instance
        .collection('taskCollection')
        .add(model.toJson());
  }

  ///Get All Tasks
  ///Get Completed Tasks
  ///Get InCompleted Tasks
  ///Update Task
  Future updateTask(TaskModel model) async {
    return await FirebaseFirestore.instance
        .collection('taskCollection')
        .doc(model.docId)
        .update({'title': model.title, 'description': model.description});
  }

  ///Mark Task as Complete
  Future markTaskAsComplete(String taskID) async {
    return await FirebaseFirestore.instance
        .collection('taskCollection')
        .doc(taskID)
        .update({'isComplete': true});
  }

  ///Delete Task
  Future deleteTask(String taskID) async {
    return await FirebaseFirestore.instance
        .collection('taskCollection')
        .doc(taskID)
        .delete();
  }
}
