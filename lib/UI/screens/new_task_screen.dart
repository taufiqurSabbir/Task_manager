import 'package:flutter/material.dart';
import 'package:task_managment/UI/screens/add_new_task.dart';
import 'package:task_managment/data/model/auth_utility.dart';

import '../../data/model/login_model.dart';
import '../widget/User_profile_banner.dart';
import '../widget/task_list.dart';
import '../widget/task_summary.dart';

class new_task extends StatefulWidget {
  const new_task({Key? key}) : super(key: key);

  @override
  State<new_task> createState() => _new_taskState();
}

class _new_taskState extends State<new_task> {

  @override
  void initState() {

    super.initState();
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
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Task_list(colour: Colors.blueAccent, status_name: 'New',),
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
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>add_new_task()));
      },child: Icon(Icons.add),),
    );

  }
}
