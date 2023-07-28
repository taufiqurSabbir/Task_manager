import 'dart:convert';
import 'dart:math';
import 'dart:developer' as developer;
import 'package:http/http.dart';
import 'package:task_managment/data/model/network_response.dart';

class NetworkCaller {
  Future<NetworkResponse> getrequest(String url) async {
    Response response = await get(Uri.parse(url));
    try {
      if (response.statusCode == 200) {
        print(response.body);

        return NetworkResponse(
            true, response.statusCode, jsonDecode(response.body));
      } else {
        print(response.body);

        return NetworkResponse(false, response.statusCode, null);
      }
    } catch (e) {
      log(e.toString() as num);
    }

    return NetworkResponse(false, -1, null);
  }

  Future<NetworkResponse> postrequest(
      String url, Map<String, dynamic> body) async {
    try {
      Response response = await post(Uri.parse(url),
          headers: {'Content-Type': 'application/json'},
          body: jsonEncode(body),
      );

      developer.log(response.body);
      if (response.statusCode == 200) {
        return NetworkResponse(
            true, response.statusCode, jsonDecode(response.body));
      } else {
        return NetworkResponse(false, response.statusCode, null);
      }
    } catch (e) {
      log(e.toString() as num);
    }
    return NetworkResponse(false, -1, null);
  }
}
