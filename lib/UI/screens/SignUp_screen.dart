import 'package:flutter/material.dart';

import '../widget/screen_background.dart';
import 'email_varification_screen.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
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
                        child: Text('Get Started with',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge),
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
                          onPressed: () {},
                          child: const Icon(Icons.arrow_forward_ios_sharp)),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 18),
                        child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => email_varification()));
                            },
                            child: const Text(
                              'Forget Password?',
                              style: TextStyle(color: Colors.grey),
                            )),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Don\'t have an account',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontSize: 15,
                              letterSpacing: 0.5),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>signup()));
                            },
                            child: const Text('Sign Up'))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
