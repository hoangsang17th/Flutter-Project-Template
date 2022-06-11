import '../datasources/todo.datasource.dart';
import '../models/todo.model.dart';

class TodoRepository {
  final TodoDataSource todoDataSource;
  // If you get data from an API you must use Provider
  TodoRepository({
    required this.todoDataSource,
  });

  Future<List<TodoModel>> getTodos() async {
    return await todoDataSource.getTodos();
  }

  Future<bool> updateTodo(TodoModel todo) async {
    return await todoDataSource.updateTodo(todo);
  }

  Future<bool> deleteTodo(int id) async {
    return await todoDataSource.deleteTodo(id);
  }

  Future<bool> createTodo(TodoModel todo) async {
    return await todoDataSource.createTodo(todo);
  }
}
