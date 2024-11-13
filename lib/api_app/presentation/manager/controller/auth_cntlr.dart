import 'package:api_call/api_app/core/response_classify.dart';
import 'package:api_call/api_app/data/remote/modals/request/login_request_modal.dart';
import 'package:api_call/api_app/data/remote/modals/response/login_response_modal.dart';
import 'package:api_call/api_app/domain/usecase/login_usecase.dart';
import 'package:api_call/api_app/presentation/routes/app_pages.dart';
import 'package:api_call/api_app/presentation/widgets/custom/custom_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthCntlr extends GetxController {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final loginTypeController = TextEditingController();
  final LoginUsecase loginUsecase;

  AuthCntlr(this.loginUsecase);
  final loginState = ResponseClassify<LoginResponseModel>.error("").obs;
  final userDataList = <UserData>[];
  getLogin(String username, String password, int loginType) async {
    loginState.value = ResponseClassify.loading();
    try {
      loginState.value = ResponseClassify.completed(await loginUsecase.call(
          LoginRequestModal(
              username: username, password: password, loginType: loginType)));
      userDataList.clear();
      userDataList.addAll(loginState.value.data!.data);
      Get.toNamed(AppPages.dahboard);
      bottomMsg("Success", "Login Success", true);
    } catch (e) {
      loginState.value = ResponseClassify.error("$e");
      bottomMsg("Failed", "$e", false);
    }
  }
}
