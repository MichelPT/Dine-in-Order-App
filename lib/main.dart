import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/constants/route_constant.dart';
import 'package:getx_project/controllers/routeController.dart';
import 'package:getx_project/pages/NotFound.dart';

Future<void> main() async {
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();
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
        primarySwatch: Colors.yellow    //home: loginScreen()
      ),);
  }
}


