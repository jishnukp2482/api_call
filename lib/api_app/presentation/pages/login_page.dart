import 'package:api_call/api_app/core/response_classify.dart';
import 'package:api_call/api_app/presentation/manager/controller/auth_cntlr.dart';
import 'package:api_call/api_app/presentation/widgets/custom/custom_snackbar.dart';
import 'package:api_call/api_app/presentation/widgets/custom/custome_gradient_widget.dart';
import 'package:api_call/api_app/presentation/widgets/custom/custome_label_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final authcontroller = Get.find<AuthCntlr>();
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.all(w * 0.05),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            LabelCustomTextField(
                controller: authcontroller.usernameController,
                hintText: "enter username",
                textFieldLabel: "username"),
            SizedBox(
              height: h * 0.05,
            ),
            LabelCustomTextField(
                controller: authcontroller.passwordController,
                hintText: "enter password",
                textFieldLabel: "password"),
            SizedBox(
              height: h * 0.05,
            ),
            LabelCustomTextField(
                controller: authcontroller.loginTypeController,
                hintText: "enter logintype",
                textFieldLabel: "LoginType"),
            SizedBox(
              height: h * 0.05,
            ),
            Obx(
             ()=>authcontroller.loginState.value.status==Status.LOADING?
             
             Center(child: CircularProgressIndicator()): 
             CustomGradientButton(
                  title: "Login",
                  onPressed: () {
                    if (authcontroller.usernameController.text.isEmpty &&
                        authcontroller.passwordController.text.isEmpty &&
                        authcontroller.loginTypeController.text.isEmpty) {
                      bottomMsg("Failed", "Please enter All fields", false);
                    } else if (authcontroller.usernameController.text.isEmpty) {
                      bottomMsg("Failed", "Please enter username", false);
                    } else if (authcontroller.passwordController.text.isEmpty) {
                      bottomMsg("Failed", "Please enter password", false);
                    } else if (authcontroller.loginTypeController.text.isEmpty) {
                      bottomMsg("Failed", "Please enter loginType", false);
                    } else {
                      authcontroller.getLogin(
                          authcontroller.usernameController.text,
                          authcontroller.passwordController.text,
                          int.parse(authcontroller.loginTypeController.text));
                    }
                  }),
            ),
          ],
        ),
      ),
    ));
  }
}
