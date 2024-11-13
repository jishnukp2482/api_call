
import 'package:api_call/api_app/presentation/manager/bindings/auth_cntlr_binding.dart';
import 'package:api_call/api_app/presentation/pages/dash_board.dart';
import 'package:api_call/api_app/presentation/pages/login_page.dart';
import 'package:api_call/api_app/presentation/pages/splash.dart';
import 'package:api_call/api_app/presentation/routes/app_pages.dart';
import 'package:get/get.dart';


class AppRoutes {
  static List<GetPage> routes = [
    GetPage(name: AppPages.splashScreen, page: () => SplashScreen()),
    GetPage(name: AppPages.loginpage, page: () => LoginPage(),binding: AuthCntlrBinding()),
    GetPage(name: AppPages.dahboard, page: () => Dashboard(),binding: AuthCntlrBinding()),
  ];
}
