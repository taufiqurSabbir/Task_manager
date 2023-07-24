import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_managment/UI/utils/asset_utils.dart';

import 'loginScreen.dart';

class Splash_screen extends StatefulWidget {
  const Splash_screen({Key? key}) : super(key: key);

  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {

  @override
  void initState() {
    super.initState();
    NavigationtoLogin();
  }


  void NavigationtoLogin() {
    Future.delayed(Duration(seconds: 3)).then((_){

      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (context) => const Login()), (route) => false);
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: SvgPicture.asset(
              AssetUtils.BackgroundSVG,
              fit: BoxFit.fitHeight,
            ),
          ),
          Center(
            child: SvgPicture.asset(
              AssetUtils.logoSvg,
              height: 50,
              width: 80,
            ),
          )
        ],
      ),
    );
  }
}