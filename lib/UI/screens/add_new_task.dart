import 'package:flutter/material.dart';
import 'package:task_managment/UI/widget/User_profile_banner.dart';

import '../widget/screen_background.dart';

class add_new_task extends StatefulWidget {
  const add_new_task({Key? key}) : super(key: key);

  @override
  State<add_new_task> createState() => _add_new_taskState();
}

class _add_new_taskState extends State<add_new_task> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen_background(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              User_profile_banner(),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 25,),
                    Text('Add New Task',style: Theme.of(context).textTheme.titleLarge,),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(hintText: 'Title'),
                    ),
                    SizedBox(height: 14,),
                    TextFormField(
                      maxLines: 4,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(hintText: 'Description'),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {
                           
                          },
                          child: const Icon(Icons.arrow_forward_ios_sharp)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
