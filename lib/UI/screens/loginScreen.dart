import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_managment/UI/utils/asset_utils.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Stack(
            children: [
              SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: SvgPicture.asset(
                  AssetUtils.BackgroundSVG,
                  fit: BoxFit.fitHeight,
                ),
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    AssetUtils.logoSvg,height: 100,width: 50,
                  ),
                  TextFormField(),
                  TextFormField(),
                  ElevatedButton(onPressed: (){}, child: Text('Login'))
                ],

              )
            ],
          ),
    );
  }
}
