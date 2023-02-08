import 'package:flutter/material.dart';
import 'package:huddle/routes/login.dart';
import 'package:huddle/routes/pay.dart';
import 'package:huddle/routes/sign_up.dart';

import 'routes/home.dart';
import 'constant/constant.dart';

void main() async {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Arctic Fox',
      initialRoute: '/home',
      routes: {
        '/home': (context) => const Home(),
        '/login': (context) => const Login(),
        '/sign_up': (context) => const SignUp(),
        '/Pay': (context) => const Pay()
      },
      theme: ThemeData(
        fontFamily: "Urban",
        primaryColor: Colors.white,
        brightness: Brightness.light,
        dividerColor: Colors.white54,
        pageTransitionsTheme: const PageTransitionsTheme(builders: {
          TargetPlatform.android: OpenUpwardsPageTransitionsBuilder()
        }),
        primarySwatch: Colors.purple,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.purple),
        scaffoldBackgroundColor: Constants.white,
        scrollbarTheme: ScrollbarThemeData(
          interactive: true,
          thumbVisibility: const MaterialStatePropertyAll(false),
          radius: const Radius.circular(50),
          thickness: MaterialStateProperty.all(4),
          crossAxisMargin: 2,
          thumbColor: MaterialStateProperty.all(Colors.white30),
        ),
      ),

      /* Dark theme settings */
      darkTheme: ThemeData(
        fontFamily: "Urban",
        primaryColor: Colors.black,
        // primarySwatch: Colors.purple,
        // colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.purple),
        primaryColorDark: Colors.purple,
        pageTransitionsTheme: const PageTransitionsTheme(builders: {
          TargetPlatform.android: OpenUpwardsPageTransitionsBuilder()
        }),
        brightness: Brightness.dark,
        dividerColor: Colors.black12,
        primaryColorLight: Colors.black,
        scaffoldBackgroundColor: Colors.black,
        scrollbarTheme: ScrollbarThemeData(
          interactive: true,
          thumbVisibility: const MaterialStatePropertyAll(false),
          radius: const Radius.circular(50),
          thickness: MaterialStateProperty.all(4),
          crossAxisMargin: 2,
          thumbColor: MaterialStateProperty.all(Colors.white30),
        ),
      ),
      themeMode: ThemeMode.dark,
    );
  }
}
