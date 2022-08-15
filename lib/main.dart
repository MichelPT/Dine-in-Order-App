import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/constants/routeConstant.dart';
import 'package:getx_project/controllers/routeController.dart';
import 'package:getx_project/pages/NotFound.dart';
import 'package:getx_project/pages/loginScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: PagesRoute.loginPage,
      getPages: PageRouteController.pages,
      unknownRoute: GetPage(name:PagesRoute.unknownPage, page:() => NotFound()),
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple
      //home: loginScreen()
      ),);
  }
}


