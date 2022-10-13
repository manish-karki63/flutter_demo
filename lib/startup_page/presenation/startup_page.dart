import 'package:flutter/material.dart';
import 'package:flutter_demo/common/constants/route_strings.dart';
import 'package:flutter_demo/common/route/route_arguments.dart';
import 'package:flutter_demo/home_page/presentation/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StartupPage extends StatefulWidget {
  const StartupPage({Key? key}) : super(key: key);

  @override
  State<StartupPage> createState() => _StartupPageState();
}

class _StartupPageState extends State<StartupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Startup Page"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  /*Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => HomePage(),
                      ));*/
                  Navigator.pushNamed(context, RouteStrings.homePage);
                },
                child: const Text("Home Page"),
              ),
              TextButton(
                onPressed: () async{
                  SharedPreferences pref = await SharedPreferences.getInstance();
                  pref.setString("Name", "value");
                  var name = await pref.getString("Name");
                  Navigator.pushNamed(context, RouteStrings.contactPage,
                      arguments: ContactPageArguments(name: "Rishav"));
                },
                child: const Text("Contact Page"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
