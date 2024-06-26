import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_farm/app/routes/app_pages.dart';

import '../../../core/assets.dart';
import '../../../routes/app_arguments.dart';

class OtpController extends GetxController {
  final pin = TextEditingController();
  final otpNode = FocusNode();
  final enableButton = false.obs;
  final page = PageController();

  void onCompleted(String value) {
    if (value == "1111") {
      enableButton.value = true;
    }
  }

  void verifyOtp() {
    Get.offAllNamed(
      Routes.SUCCESS,
      arguments: SuccessArguments(
        icon: imgSuccess,
        title: "Verification Success",
        subtitle:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
        firstAction: "Submit",
        firstTap: () {
          Get.offAllNamed(Routes.LOGIN);
        },
      ),
    );
  }
}
