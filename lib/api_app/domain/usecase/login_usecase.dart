import 'package:api_call/api_app/core/usecase.dart';
import 'package:api_call/api_app/data/remote/modals/request/login_request_modal.dart';
import 'package:api_call/api_app/data/remote/modals/response/login_response_modal.dart';
import 'package:api_call/api_app/data/repository/app_repository.dart';

class LoginUsecase extends UseCase<LoginResponseModel, LoginRequestModal> {
  final AppRepository appRepository;

  LoginUsecase(this.appRepository);

  @override
  Future<LoginResponseModel> call(LoginRequestModal params) {
    return appRepository.getLogin(params);
  }
}
