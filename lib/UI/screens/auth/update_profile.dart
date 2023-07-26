import 'package:flutter/material.dart';

import 'package:task_managment/UI/widget/User_profile_banner.dart';
import 'package:task_managment/UI/widget/screen_background.dart';

class update_profile extends StatefulWidget {
  const update_profile({Key? key}) : super(key: key);

  @override
  State<update_profile> createState() => _update_profileState();
}

class _update_profileState extends State<update_profile> {
  @override
  Widget build(BuildContext context) {
    bool password = true;
    return Scaffold(
      body: screen_background(
        child: SingleChildScrollView(
          child: Column(
            children: [
              User_profile_banner(),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 22,
                    ),
                    Text(
                      'Update Profile',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(hintText: 'Email'),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(hintText: 'First Name'),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(hintText: 'Last Name'),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(hintText: 'Mobile'),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          hintText: 'Password',
                          suffixIcon: IconButton(
                              onPressed: () {
                                password = false;
                                setState(() {});
                                Future.delayed(Duration(seconds: 2))
                                    .then((value) {
                                  password = true;
                                  setState(() {});
                                });
                              },
                              icon: Icon(Icons.remove_red_eye_outlined))),
                      obscureText: password,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {},
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
