import 'package:dio/dio.dart';
import 'dart:io';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:new_my_app/model/model.dart';

class UserService {
  static Box<UserModel>? userBox;
  static Future<dynamic> getNewService() async {
    await openBox();
    try {
      Response response =
          await Dio().get("https://jsonplaceholder.typicode.com/users");
      if (response.statusCode == 200) {
        List<UserModel> resData =
            (response.data as List).map((e) => UserModel.fromJson(e)).toList();
        await putToBox(resData);
        return response.data;
      } else {
        return response.statusMessage;
      }
    } catch (e) {
      throw e.toString();
    }
  }

  static openBox() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    Hive.init(appDocDir.path);
    userBox = await Hive.openBox<UserModel>("currency");
  }

  static putToBox(List<UserModel> data) async {
    await userBox!.clear();
    for (UserModel element in data) {
      await userBox!.add(element);
    }
    print("Succesfully");
  }

  static void registerAdapters() {
    Hive.registerAdapter(UserModelAdapter());
    Hive.registerAdapter(AddressAdapter());
    Hive.registerAdapter(GeoAdapter());
    Hive.registerAdapter(CompanyAdapter());
  }
}
