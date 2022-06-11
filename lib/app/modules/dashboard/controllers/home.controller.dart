import 'package:get/get.dart';

import '../../../data/models/todo.model.dart';
import '../../../data/repositories/todo.repository.dart';

class HomeController extends GetxController {
  final TodoRepository todoRepository;
  HomeController({
    required this.todoRepository,
  });

  RxList<TodoModel> todos = <TodoModel>[].obs;
  @override
  void onInit() {
    getTodos();
    super.onInit();
  }

  Future<void> getTodos() async {
    todos.value = await todoRepository.getTodos();
    // I used refresh() function for UI update
    todos.refresh();
  }
}
