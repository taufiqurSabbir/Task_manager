import 'package:flutter/material.dart';

import '../../widget/screen_background.dart';
import 'loginScreen.dart';


class reset_password extends StatefulWidget {
  const reset_password({Key? key}) : super(key: key);

  @override
  State<reset_password> createState() => _reset_passwordState();
}

class _reset_passwordState extends State<reset_password> {
  bool password = true;
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
                      child: Text('Set Password',
                          style: Theme.of(context).textTheme.titleLarge),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                          'Minimum password should be 8 letters with number and symbols',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(color: Colors.grey)),
                    ),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration:  InputDecoration(hintText: 'Password',
                      suffixIcon: IconButton(onPressed: (){
                        password = false;
                        setState(() {});
                        Future.delayed(Duration(seconds: 1)).then((value) {
                          password = true;
                          setState(() {});
                        });

                      }, icon: Icon(Icons.remove_red_eye),)
                    ),
                    obscureText: password,


                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration:  InputDecoration(hintText: 'Confirm Password',
                        suffixIcon: IconButton(onPressed: (){
                          password = false;
                          setState(() {});
                          Future.delayed(Duration(seconds: 1)).then((value) {
                            password = true;
                            setState(() {});
                          });

                        }, icon: Icon(Icons.remove_red_eye),)
                    ),
                    obscureText: password,


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
                          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Login()), (route) => false);
                        },
                        child: const Text('Confirm')),
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
                            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Login()), (route) => false);
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
