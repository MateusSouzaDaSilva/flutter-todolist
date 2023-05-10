import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todolist/views/add_task_view.dart';
import 'package:todolist/views/header_view.dart';
import 'package:todolist/views/task_info_view.dart';
import 'package:todolist/views/task_list_view.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              // Header view
              Expanded(
                  flex: 1,
                  child: Container(
                    child: HeaderView(),
                  )),
              // Task info view
              Expanded(
                  flex: 1,
                  child: TaskInfoView(),),
              // Task list view
              Expanded(
                flex: 7,
                child: TaskListView(),
              ),
            ],
          ),
        ),
        floatingActionButton: const AddTaskView());
  }
}
