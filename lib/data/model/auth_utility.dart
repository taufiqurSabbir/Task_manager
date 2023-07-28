import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_managment/data/model/login_model.dart';

class AuthUtlity{
  Future<void>saveUserInfo(login_model model) async{
   SharedPreferences _sharep = await SharedPreferences.getInstance();
   _sharep.setString(key, value)
  }

  Future<void>clearInfo(){

  }

  Future<bool> checkuserlogin{

}
}