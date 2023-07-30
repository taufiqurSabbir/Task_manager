import 'package:flutter/material.dart';

import '../widget/User_profile_banner.dart';
import '../widget/task_list.dart';

class completed extends StatefulWidget {
  const completed({Key? key}) : super(key: key);

  @override
  State<completed> createState() => _completedState();
}

class _completedState extends State<completed> {
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
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Task_list(
                        title: 'jughyu',
                        description:  'khuj',
                        date: 'jnhjnhuj',
                        id:'tasksData[index]',
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
