import 'package:api_call/api_app/core/api_provider.dart';
import 'package:api_call/api_app/data/remote/modals/request/login_request_modal.dart';
import 'package:api_call/api_app/data/remote/modals/response/login_response_modal.dart';
import 'package:api_call/api_app/data/remote/remote_routes/app_remote_routes.dart';

abstract class AppdataSource {
  Future<LoginResponseModel> getLogin(LoginRequestModal requestModal);
}

class AppDataSourceImpl extends AppdataSource {
  final ApiProvider apiProvider;

  AppDataSourceImpl(this.apiProvider);

  @override
  Future<LoginResponseModel> getLogin(LoginRequestModal requestModal) async {
    return LoginResponseModel.fromJson(
        await apiProvider.post(AppRemoteRoutes.login, requestModal));
  }
}
