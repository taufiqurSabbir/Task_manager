import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:task_managment/UI/screens/add_new_task.dart';
import 'package:task_managment/data/model/auth_utility.dart';
import 'package:task_managment/data/model/network_response.dart';
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
    Newtask();
    print(tasksData.length);
    setState(() {});
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.grey.shade200,
          child: Column(
            children: [
              const User_profile_banner(),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Task_Summary(
                      number: 50,
                      title: 'New',
                    )),
                    Expanded(
                        child: Task_Summary(
                      number: 50,
                      title: 'Progress',
                    )),
                    Expanded(
                        child: Task_Summary(
                      number: 50,
                      title: 'Cancel',
                    )),
                    Expanded(
                        child: Task_Summary(
                      number: 50,
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
                        id:tasksData[index]['_id'],
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

  void new_task_set_state(BuildContext context){

  }
}
