// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:motivation_project/all%20mains/theme.dart';
// import 'package:motivation_project/page/profilepage.dart';
// import 'package:motivation_project/profilepage.dart';
// import 'package:motivation_project/theme.dart';

// Future main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await SystemChrome.setPreferredOrientations([
//     DeviceOrientation.portraitUp,
//     DeviceOrientation.portraitDown,
//   ]);

//   runApp(MyApp());
// }

// // ignore: must_be_immutable
// class MyApp extends StatelessWidget {
//   static final String title = 'User Profile';

//   // ignore: non_constant_identifier_names
//   var ThemeProvider;

//   @override
//   Widget build(BuildContext context) {
//     var user;
//     return ThemeProvider(
//       initTheme: user.isDarkMode ? MyThemes.darkTheme : MyThemes.lightTheme,
//       child: Builder(
//         builder: (context) => MaterialApp(
//           debugShowCheckedModeBanner: false,
//           theme: ThemeProvider.of(context),
//           title: title,
//           home: ProfilePage(),
//         ),
//       ),
//     );
//   }
// }
