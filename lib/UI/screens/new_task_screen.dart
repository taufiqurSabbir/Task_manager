import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:task_managment/UI/screens/add_new_task.dart';
import 'package:task_managment/data/model/auth_utility.dart';
import 'package:task_managment/data/model/network_response.dart';
import 'package:task_managment/data/model/task_count.dart';
import 'package:task_managment/data/services/network_caller.dart';

import '../../data/model/login_model.dart';
import '../../data/model/tasks.dart';
import '../../data/utils/urls.dart';
import '../widget/User_profile_banner.dart';
import '../widget/task_list.dart';
import '../widget/task_summary.dart';

class new_task extends StatefulWidget {
  const new_task({Key? key}) : super(key: key);

  @override
  State<new_task> createState() => _new_taskState();
}

class _new_taskState extends State<new_task> {
  List<dynamic> tasksData = [];

  @override
  void initState() {
    setState(() {
      Newtask();
      new_task_count();
      progress_task_count();
      cancled_task_count();
      completed_task_count();
    });



    print(tasksData.length);

    super.initState();
  }

  Future<void> Newtask() async {
    NetworkResponse response = await NetworkCaller().getrequest(Urls.new_list);

    if (response.isSuccess) {
      setState(() {
        tasksData = response.body!['data'];
      });
    } else {
      log(response.body.toString());
    }
  }

   int new_count=0;
   int progress=0;
   int cancle=0;
   int completed=0;

  Future<int?> new_task_count() async {
    NetworkResponse response = await NetworkCaller().getrequest(Urls.new_list);
    List<dynamic> items = [];
    if (response.isSuccess) {
      items = response.body!['data'];
      new_count = items.length;
      return new_count;
    } else {
      return new_count;
    }
  }

  Future<int?> progress_task_count() async {
    NetworkResponse response = await NetworkCaller().getrequest(Urls.Progress);
    List<dynamic> items = [];
    if (response.isSuccess) {
      items = response.body!['data'];
      progress = items.length;
      return progress;
    } else {
      return progress;
    }
  }


  Future<int?> cancled_task_count() async {
    NetworkResponse response = await NetworkCaller().getrequest(Urls.cancled);
    List<dynamic> items = [];
    if (response.isSuccess) {
      items = response.body!['data'];
      cancle = items.length;
      return cancle;
    } else {
      return cancle;
    }
  }

  Future<int?> completed_task_count() async {
    NetworkResponse response = await NetworkCaller().getrequest(Urls.completed);
    List<dynamic> items = [];
    if (response.isSuccess) {
      items = response.body!['data'];
      completed = items.length;
      return completed;
    } else {
      return completed;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.grey.shade200,
          child: Column(
            children: [
              const User_profile_banner(),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Task_Summary(
                      number: new_count.toString(),
                      title: 'New',
                    )),
                    Expanded(
                        child: Task_Summary(
                      number: progress.toString(),
                      title: 'Progress',
                    )),
                    Expanded(
                        child: Task_Summary(
                      number: cancle.toString(),
                      title: 'Cancel',
                    )),
                    Expanded(
                        child: Task_Summary(
                      number: completed.toString(),
                      title: 'Completed',
                    )),
                  ],
                ),
              ),
              Expanded(
                child: ListView.separated(
                  itemCount: tasksData.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Task_list(
                        title: tasksData[index]['title'],
                        description: tasksData[index]['description'],
                        date: tasksData[index]['createdDate'],
                        id: tasksData[index]['_id'],
                        colour: Colors.blueAccent,
                        status_name: 'New',
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const Divider(
                      height: 4,
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => add_new_task()));
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void new_task_set_state(BuildContext context) {}
}
