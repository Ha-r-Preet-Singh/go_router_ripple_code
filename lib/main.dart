import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_ripple_code/route_names.dart';
import 'package:go_router_ripple_code/screens/dashboard.dart';
import 'package:go_router_ripple_code/screens/error.dart';
import 'package:go_router_ripple_code/screens/login.dart';
import 'package:go_router_ripple_code/screens/profile.dart';

void main() {
  runApp(MyApp());
}

final isLoggedIn = true;

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Go Router',
      // In routerconfig we will pass the object of go router
      routerConfig: _router,
    );
  }

  // object of go router create here
  final GoRouter _router = GoRouter(
    errorBuilder: (context, state) => const ErrorPage(),
      redirect: (context, state) {
        if (isLoggedIn) {
          return "/test";
        } else {
          return "/";
        }
      },
      // specify the initial location
      //   initialLocation: "/",
      routes: [
        GoRoute(
          // name: RouteNames.login,
          path: "/",
          builder: (context, state) => Login(),
        ),
        GoRoute(
          // name: RouteNames.dashboard,
          path: "/dashboard",
          builder: (context, state) => const Dashboard(),
        ),
      ]);
}

//   // deep nested route here
//
//   final GoRouter _router = GoRouter(routes: [
//     GoRoute(path: "/", builder: (context, state) => const Dashboard(), routes: [
//       GoRoute(path: "a", builder: (context, state) => const A(), routes: [
//         GoRoute(
//           path: "b",
//           builder: (context, state) => const B(),
//           routes: [
//             GoRoute(
//               path: "C",
//               builder: (context, state) => const C(),
//             ),
//           ],
//         ),
//       ]),
//     ])
//   ]);
// }
