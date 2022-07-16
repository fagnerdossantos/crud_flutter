import 'package:crud_flutter/src/app/login/pages/login_page.dart';
import 'package:crud_flutter/src/app/register/pages/register_page.dart';
import 'package:flutter/material.dart';

//import 'package:provider/provider.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /* ROUTES */
      initialRoute: "/login",
      routes: {
        "/login": (context) => const LoginPage(),
        "/register": (context) => const RegisterPage(),
      },
    );
  }
}
