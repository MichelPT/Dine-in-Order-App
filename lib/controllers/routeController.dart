import 'package:get/get.dart';
import 'package:getx_project/pages/loginScreen.dart';
import 'package:getx_project/pages/registerScreen.dart';

class PageRoute {
  static var pages = [
    GetPage(name: '/login_page', page: () => loginScreen()),
    GetPage(name: '/register_page', page: () => registerScreen()),
    ];
}