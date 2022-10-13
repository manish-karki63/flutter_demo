import 'package:flutter/material.dart';
import 'package:flutter_demo/common/constants/route_strings.dart';
import 'package:flutter_demo/common/route/route_handler.dart';
import 'package:flutter_demo/startup_page/presenation/startup_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      onGenerateRoute: RouteHandler.generateRoute,
      debugShowCheckedModeBanner: false,
      //home: StartupPage(),
      initialRoute: RouteStrings.startupPage,
    );
  }
}
