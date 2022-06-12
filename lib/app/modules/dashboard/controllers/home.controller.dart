import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../data/models/todo.model.dart';
import '../../../data/repositories/todo.repository.dart';

class HomeController extends GetxController {
  final TodoRepository todoRepository;
  HomeController({
    required this.todoRepository,
  });

  RxList<TodoModel> todos = <TodoModel>[].obs;
  RxBool isSave = false.obs;
  TextEditingController todoNameController = TextEditingController();
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

  void onComplete(int index) {
    todos[index].isCompleted = !todos[index].isCompleted;
    todos.refresh();
  }

  void onUpdate(int index) {
    todos[index].name = todoNameController.text;
    todos.refresh();
    Get.back();
  }

  void onChangeTextField(String value) {
    if (value != "") {
      isSave.value = true;
    } else {
      isSave.value = false;
    }
  }

  void onCreate() {
    todos.add(
      TodoModel(
        id: todos.length,
        name: todoNameController.text,
        isCompleted: false,
        creatAt: DateTime.now(),
      ),
    );
    todos.refresh();
    Get.back();
  }
}
