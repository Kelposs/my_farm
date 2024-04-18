import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_farm/app/routes/app_pages.dart';

class LoginController extends GetxController {
  final loginKey = GlobalKey<FormState>();
  final noHandphone = TextEditingController();
  final password = TextEditingController();

  void login() async {
    Get.offAllNamed(Routes.DASHBOARD);
  }
}
