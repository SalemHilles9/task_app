import 'package:task_app/app/data/providers/task/provider.dart';
import '../../module/task.dart';

class TaskRepository {
  TaskProvider taskProvider;

  TaskRepository({required this.taskProvider});

  List<Task> readTasks() => taskProvider.readTasks();

  void writeTasks(List<Task> tasks) =>taskProvider.writeTasks(tasks);
}