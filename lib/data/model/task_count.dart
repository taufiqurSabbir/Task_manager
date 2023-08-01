import 'package:task_managment/data/model/network_response.dart';
import 'package:task_managment/data/utils/urls.dart';

import '../services/network_caller.dart';

class task_count{



  Future<int?> new_task_count() async {
    NetworkResponse response = await NetworkCaller().getrequest(Urls.new_list);
    List<dynamic> items = [];
    if (response.isSuccess){
      items = response.body!['data'];

     return items.length;
    }else{
      return -1;
    }
  }

  int? new_task=20;
  late int progress;
  late int cancle;
  late int completed;

}