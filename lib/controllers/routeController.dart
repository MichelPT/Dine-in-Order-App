import 'package:get/get.dart';
import 'package:getx_project/constants/route_constant.dart';
import 'package:getx_project/pages/homeScreen.dart';
import 'package:getx_project/pages/loginScreen.dart';
import 'package:getx_project/pages/registerScreen.dart';

class PageRouteController {
  static var pages = [
    GetPage(name: PagesRoute.loginPage, page: () => loginScreen()),
    GetPage(name: PagesRoute.registerPage, page: () => registerScreen()),
    GetPage(name: PagesRoute.homePage, page: () => HomeScreen()),
    ];
}