import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart';
import 'package:task_managment/data/model/network_response.dart';

class NetworkCaller{

    Future <NetworkResponse> getrequest(String url) async {
    Response response =await get(Uri.parse(url));
    try{
      if (response.statusCode == 200) {
        return NetworkResponse(true,response.statusCode,jsonDecode(response.body));
      } else {
        return NetworkResponse(false,response.statusCode,null);
      }
    }catch(e){
        log(e.toString() as num);
    }
    return NetworkResponse(false,-1,null);
  }


    Future <NetworkResponse> postrequest(String url,Map<String,dynamic> body) async {
      Response response =await post(Uri.parse(url), body: jsonEncode(body));
      try{
        if (response.statusCode == 200) {
          return NetworkResponse(true,response.statusCode,jsonDecode(response.body));
        } else {
         return NetworkResponse(false,response.statusCode,null);
        }
      }catch(e){
        log(e.toString() as num);
      }
      return NetworkResponse(false,-1,null);
    }
}