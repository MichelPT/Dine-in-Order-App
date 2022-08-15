import 'package:get/get.dart';
import 'package:getx_project/constants/routeConstant.dart';
import 'package:getx_project/pages/loginScreen.dart';
import 'package:getx_project/pages/registerScreen.dart';

class PageRouteController {
  static var pages = [
    GetPage(name: PagesRoute.loginPage, page: () => loginScreen()),
    GetPage(name: PagesRoute.registerPage, page: () => registerScreen()),
    ];
}