import 'package:flutter/material.dart';
import 'package:task_managment/UI/widget/screen_background.dart';

import 'OTP_varification.dart';

class email_varification extends StatefulWidget {
  const email_varification({Key? key}) : super(key: key);

  @override
  State<email_varification> createState() => _email_varificationState();
}

class _email_varificationState extends State<email_varification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen_background(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 70,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text('Your Email Address',
                          style: Theme.of(context).textTheme.titleLarge),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                          'A 6 digits pin will send to your email address',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(color: Colors.grey)),
                    ),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(hintText: 'Email'),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>OTP_varification()));
                        },
                        child: const Icon(Icons.arrow_forward_ios_sharp)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Have an account',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 15,
                            letterSpacing: 0.5),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Sign In'))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
