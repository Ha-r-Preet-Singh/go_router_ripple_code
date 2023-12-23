

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_ripple_code/route_names.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
      ),
      body: Center(
        child: InkWell(
          onTap: (){
            // GoRouter.of(context).go("/profile");
            // String name = "Harpreet Singh";
            context.go("/");   //shortcut way

            // while using Named Routes
            // context.goNamed(RouteNames.,queryParameters: {
            //   "name":"Happy Singh",
            // });
          },
          child: Container(
              height: 40,
              width: 100,
              color: Colors.pink,
              child: Center(child: Text("Login",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),))),
        ),
      ),
    );
  }
}
