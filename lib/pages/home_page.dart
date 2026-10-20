import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_minggu7/Controllers/kontrol.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final UserController userController = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: Text("User Information"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return Text(
                'Name: ${userController.user.value.name}, Age: ${userController.user.value.age}, IPK: ${userController.user.value.ipk}',
                style: TextStyle(fontSize: 20),
              );
            }),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                userController.createUser("Aqshal", 25, 4);
              },
              child: Text("Create New User"),
            ),
          ],
        ),
      ),
    );
  }
}
