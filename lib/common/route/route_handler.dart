import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/common/constants/route_strings.dart';
import 'package:flutter_demo/common/route/route_arguments.dart';
import 'package:flutter_demo/contact_page/presentation/contact_page.dart';
import 'package:flutter_demo/home_page/presentation/home_page.dart';
import 'package:flutter_demo/startup_page/presenation/startup_page.dart';

class RouteHandler{
  static Route<dynamic> generateRoute(RouteSettings settings){
    var args = settings.arguments;
    switch(settings.name){
      case RouteStrings.homePage:
        return MaterialPageRoute(builder: (_) => HomePage());
      case RouteStrings.startupPage:
        return CupertinoPageRoute(builder: (_) => StartupPage());
      case RouteStrings.contactPage:
        var typedArgs = args as ContactPageArguments;
        return CupertinoPageRoute(builder: (_) => ContactPage(name: typedArgs.name));
      default:
        return MaterialPageRoute(builder: (_) => HomePage());
    }
  }
}