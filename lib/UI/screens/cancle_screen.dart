import 'package:flutter/material.dart';

import '../widget/User_profile_banner.dart';
import '../widget/task_list.dart';

class cancle extends StatefulWidget {
  const cancle({Key? key}) : super(key: key);

  @override
  State<cancle> createState() => _cancleState();
}

class _cancleState extends State<cancle> {
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
                        colour: Colors.red,
                        status_name: 'Canceled',
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
