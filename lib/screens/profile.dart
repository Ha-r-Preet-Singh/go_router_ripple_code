//
//
// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:go_router_ripple_code/route_names.dart';
//
// class Profile extends StatelessWidget {
//  final  String userName ;
//    Profile({super.key,required this.userName
//
//   });
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title:  Text("Welcome ${userName}"),
//       ),
//       body:  Center(
//         child: InkWell(
//           onTap: (){
//             // GoRouter.of(context).go("/");
//             // context.go("/");    //shortcut way
//             // while using Named Routes
//             context.goNamed(RouteNames.dashboard);
//           },
//           child: Container(
//             height: 40,
//               width: 100,
//               color: Colors.pink,
//               child: Center(child: Text("Dashboard",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),))),
//         ),
//       ),
//     );
//   }
// }
