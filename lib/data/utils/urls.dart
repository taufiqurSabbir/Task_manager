class Urls {
  Urls._();
  static String baseurl = 'https://task.teamrabbil.com/api/v1';
  static String registation = '$baseurl/registration';
  static String login = '$baseurl/login';
  static String addNewTask = '$baseurl/createTask';
  static String new_list = '$baseurl/listTaskByStatus/New';
  static String completed = '$baseurl/listTaskByStatus/Completed';
  static String Progress = '$baseurl/listTaskByStatus/Progress';
  static String cancled = '$baseurl/listTaskByStatus/Cancelled';
  static String forgetpass = '$baseurl/RecoverVerifyEmail/';

}
