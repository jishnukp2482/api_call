import 'package:api_call/api_app/core/api_provider.dart';
import 'package:api_call/api_app/data/remote/data_source/appdata_source.dart';
import 'package:api_call/api_app/data/repository/app_repository.dart';
import 'package:api_call/api_app/domain/repositories/app_repositoryimpl.dart';
import 'package:api_call/api_app/domain/usecase/login_usecase.dart';
import 'package:api_call/api_app/presentation/manager/controller/auth_cntlr.dart';
import 'package:api_call/injector.dart';
import 'package:get/get.dart';

class AuthCntlrBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => AuthCntlr(sl()),
    );
  }
}
