import 'dart:developer';

import 'package:flutter/material.dart';

import '../../data/model/network_response.dart';
import '../../data/services/network_caller.dart';
import '../../data/utils/urls.dart';
import '../widget/User_profile_banner.dart';
import '../widget/task_list.dart';

class completed extends StatefulWidget {
  const completed({Key? key}) : super(key: key);

  @override
  State<completed> createState() => _completedState();
}

List<dynamic> complete_task_data = [];

class _completedState extends State<completed> {
  @override
  void initState() {
    setState(() {
      completed_task();
    });
    super.initState();
  }


  Future<void> completed_task() async {
    NetworkResponse response = await NetworkCaller().getrequest(Urls.completed);

    if (response.isSuccess) {
      complete_task_data = response.body!['data'];
      log(complete_task_data.toString());
      setState(() {
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
              Container(
                color: Colors.blueAccent,
                child: const User_profile_banner(),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
              ),
              Expanded(
                child: ListView.separated(
                  itemCount: complete_task_data.length,
                  itemBuilder: (context, index) {
                    return  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Task_list(
                        title: complete_task_data[index]['title'] ,
                        description:  complete_task_data[index]['description'] ,
                        date:  complete_task_data[index]['createdDate'],
                        id: complete_task_data[index]['_id'],
                        colour: Colors.green,
                        status_name: 'Completed',
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
    );
  }
}
