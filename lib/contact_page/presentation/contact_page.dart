import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  ContactPage({required this.name, Key? key}) : super(key: key);
  String? name;

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact Us Page"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(widget.name!),
              TextButton(
                onPressed: () {},
                child: const Text("Startup Page"),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Contact Page"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
