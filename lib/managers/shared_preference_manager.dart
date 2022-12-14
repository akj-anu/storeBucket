import 'package:shared_preferences/shared_preferences.dart';

class UserManager {
  static setUser(String username) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('userName', username);
  }

  static Future<String> getUser() async {
    final prefs = await SharedPreferences.getInstance();
    String action = prefs.getString('userName') ?? '';
    return action;
  }
   
   static Future<void> removeuser()async{
     final prefs = await SharedPreferences.getInstance();
     prefs.remove('userName');
   }

}
