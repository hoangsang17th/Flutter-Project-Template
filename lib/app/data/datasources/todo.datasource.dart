import 'package:get/get.dart';

import '../models/todo.model.dart';

class TodoDataSource {
  Future<List<TodoModel>> getTodos() async {
    return TodoMock.todos;
  }

  Future<bool> updateTodo(TodoModel todo) async {
    TodoModel? data = TodoMock.todos.firstWhereOrNull(
      (element) => element.id == todo.id,
    );
    if (data != null) data = todo;
    // If find todo Id, I will update it and return true = success
    return data != null;
  }

  Future<bool> deleteTodo(int id) async {
    TodoMock.todos.removeWhere(
      (element) => element.id == id,
    );
    return true;
  }

  Future<bool> createTodo(TodoModel todo) async {
    todo.id = TodoMock.todos.length + 1;
    TodoMock.todos.add(todo);
    return true;
  }
}

class TodoMock {
  // Here you can use storage plans like hive to store data on user's device
  static List<TodoModel> todos = [
    TodoModel(
      id: 0,
      name: "Welcome to Flutter",
      isCompleted: true,
      creatAt: DateTime.now().subtract(
        const Duration(days: 3),
      ),
    ),
    TodoModel(
      id: 1,
      name: "This is a new project",
      isCompleted: false,
      creatAt: DateTime.now().subtract(
        const Duration(days: 2),
      ),
    ),
    TodoModel(
      id: 2,
      name: "And I want you learning GetX Pattern",
      isCompleted: true,
      creatAt: DateTime.now().subtract(
        const Duration(days: 1),
      ),
    ),
    TodoModel(
      id: 3,
      name: "Find out about it and apply it now",
      isCompleted: true,
      creatAt: DateTime.now(),
    ),
  ];
}
