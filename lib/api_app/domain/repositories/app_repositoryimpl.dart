import 'package:api_call/api_app/data/remote/data_source/appdata_source.dart';
import 'package:api_call/api_app/data/remote/modals/request/login_request_modal.dart';
import 'package:api_call/api_app/data/remote/modals/response/login_response_modal.dart';
import 'package:api_call/api_app/data/repository/app_repository.dart';

class AppRepositoryimpl extends AppRepository {
  final AppdataSource appdataSource;

  AppRepositoryimpl(this.appdataSource);

  @override
  Future<LoginResponseModel> getLogin(LoginRequestModal requestModal) {
    return appdataSource.getLogin(requestModal);
  }
}
