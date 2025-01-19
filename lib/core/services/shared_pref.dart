import 'package:shared_preferences/shared_preferences.dart';


class MyServices {
 static late SharedPreferences sharedPreferences;

  static Future initial()async{
      sharedPreferences = await SharedPreferences.getInstance();
    }

 static Future<bool> insertToCash(key , value)async{
  return await sharedPreferences.setString(key, value);
     }

 static String getCashData(key){
    return sharedPreferences.getString(key)?? "";
   }


   static Future<bool> deleteCash(key)async{
    return await sharedPreferences.remove(key);
   }
}
 