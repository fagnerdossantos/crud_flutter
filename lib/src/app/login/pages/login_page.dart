import 'package:crud_flutter/src/app/login/components/login_button.dart';
import 'package:crud_flutter/src/app/login/components/login_field.dart';
import 'package:crud_flutter/src/app/login/components/navigate_register.dart';
import 'package:crud_flutter/src/utils/pageModel/page_model.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get the screen size
    final Size size = MediaQuery.of(context).size;
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return PageModel(
      child: Column(
        children: [
          // 20%
          SizedBox(
            height: height * 0.2,
          ),

          // 10%
          SizedBox(
            height: height * 0.1,
            width: width,

            // Content
            child: Text(
              "Welcome back!",
              style: TextStyle(fontSize: height * 0.05), // 5%
            ),
          ),

          // 10%
          SizedBox(
            height: height * 0.1,
          ),

          // Email
          LoginField(
            size: size,
            id: 0,
          ),

          SizedBox(
            height: height * 0.02, // 2%
          ),

          // Password
          LoginField(
            size: size,
            id: 1,
          ),

          // 1%
          SizedBox(
            height: height * 0.01,
          ),

          // Button
          LoginButton(size: size),

          // 3%
          SizedBox(
            height: height * 0.03,
          ),

          // 3%
          // Register Now
          NavigateRegister(
            size: size,
          ),
        ],
      ),
    );
  }
}
