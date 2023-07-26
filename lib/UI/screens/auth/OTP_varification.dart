import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:task_managment/UI/screens/auth/reset_password.dart';
import 'package:task_managment/UI/widget/screen_background.dart';

import 'loginScreen.dart';

class OTP_varification extends StatefulWidget {
  const OTP_varification({Key? key}) : super(key: key);

  @override
  State<OTP_varification> createState() => _OTP_varificationState();
}

class _OTP_varificationState extends State<OTP_varification> {
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
                      child: Text('PIN Verification',
                          style: Theme.of(context).textTheme.titleLarge),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                          'A 6 digits pin sent to your email address',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(color: Colors.grey)),
                    ),
                  ),



                  PinCodeTextField(
                    length: 6,
                    obscureText: false,
                    animationType: AnimationType.fade,
                    keyboardType: TextInputType.number,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 50,
                      fieldWidth: 40,
                      activeFillColor: Colors.white,
                      inactiveFillColor: Colors.white,
                      inactiveColor: Colors.red,
                      activeColor: Colors.white,
                      selectedFillColor: Colors.white,
                      selectedColor: Colors.blueAccent,

                    ),
                    animationDuration: Duration(milliseconds: 300),
                    backgroundColor: Colors.white,
                    enableActiveFill: true,
                    cursorColor: Colors.blueAccent,

                    onCompleted: (v) {
                      print("Completed");
                    },
                    onChanged: (value) {
                      print(value);
                      setState(() {

                      });
                    },
                    beforeTextPaste: (text) {
                      print("Allowing to paste $text");
                      //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                      //but you can show anything you want here, like your pop up saying wrong paste format or etc
                      return true;
                    }, appContext: context,
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
                          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>const reset_password()), (route) => false);
                        },
                        child: const Text('Varify')),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already Have an account?',
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
