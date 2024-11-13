import 'package:api_call/api_app/presentation/manager/controller/auth_cntlr.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dashboard extends StatelessWidget {
  Dashboard({super.key});
  final authcontroller = Get.find<AuthCntlr>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          authcontroller.userDataList.isNotEmpty
              ? Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                            "name :${authcontroller.userDataList.first.name} "),
                        Text(
                            "userid :${authcontroller.userDataList.first.userId} "),
                        Text(
                            "role :${authcontroller.userDataList.first.roles.first.roleName} "),
                      ]),
                )
              : const Text("No Data Found"),
        ],
      ),
    ));
  }
}
