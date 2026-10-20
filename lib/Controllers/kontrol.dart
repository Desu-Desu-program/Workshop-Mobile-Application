import 'package:get/get.dart';
import './Data.dart';
import './User.dart';

class UserController extends GetxController {
   final UserService userService = Get.find();

  var user = User(name: "Default", age: 0, ipk:0).obs;

  @override
  void onInit() {
    super.onInit();
    user.value = userService.getUser();
  }

  void createUser(String name, int age, double ipk) {
    user.value = userService.createUser(name, age, ipk);
  }
}