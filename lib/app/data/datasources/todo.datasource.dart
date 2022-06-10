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

  Future<bool> deleteTodo(String id) async {
    TodoMock.todos.removeWhere(
      (element) => element.id == id,
    );
    return true;
  }

  Future<bool> createTodo(TodoModel todo) async {
    TodoMock.todos.add(todo);
    return true;
  }
}

class TodoMock {
  // Here you can use storage plans like hive to store data on user's device
  static List<TodoModel> todos = [];
}
