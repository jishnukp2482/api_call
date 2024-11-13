import 'package:api_call/api_app/data/remote/modals/request/login_request_modal.dart';
import 'package:api_call/api_app/data/remote/modals/response/login_response_modal.dart';

abstract class AppRepository {
   Future<LoginResponseModel> getLogin(LoginRequestModal requestModal);
}