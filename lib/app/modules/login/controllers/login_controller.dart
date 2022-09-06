import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:tabletop_exercise_app/app/routes/app_pages.dart';

class LoginController extends GetxController {
  RxBool isLoading = false.obs;
  RxBool rememberme = false.obs;
  RxBool isHidden = true.obs;
  TextEditingController nameC = TextEditingController(
    text: "ppkp.poltekbamgplg"
  );
  TextEditingController passwordC = TextEditingController();
  // TextEditingController emailResetC = TextEditingController();
  // final LoginProvider service = Get.find<LoginProvider>();

  void loginEmail(){
    if(nameC.value.text == "ppkp.poltekbamgplg" && passwordC.value.text == "poltekbang"){
      Get.offAllNamed(Routes.HOME);
    } else{
      Get.defaultDialog(
        title: "Oops!",
        titlePadding: const EdgeInsets.all(32),
        contentPadding: const EdgeInsets.fromLTRB(32, 0, 32, 32),
        middleText: "Username/Password yang Anda masukkan salah"
      );
    }
  }
}
