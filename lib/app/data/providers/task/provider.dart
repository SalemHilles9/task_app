import 'dart:convert';
import 'package:get/get.dart';
import 'package:task_app/app/data/module/task.dart';
import 'package:task_app/app/data/services/storage/services.dart';
import '../../../core/utils/keys.dart';



class TaskProvider {
  final StorageService _storge = Get.find<StorageService>();

  // {'tasks':[
  //   {'title': 'work',
  // 'color': '3ff123456',
  // 'icon': 0xe123}
  // ]}

  List<Task> readTasks() {
    var tasks = <Task>[];
    jsonDecode(_storge.read(taskKey).toString()).forEach(
            (e) => tasks.add(Task.fromJson(e)));
    return tasks;
  }

  void writeTasks(List<Task> tasks){
    _storge.write(taskKey, jsonEncode(tasks));
  }
}


