import 'package:crud_flutter/src/app/register/components/register_steps.dart';
import 'package:crud_flutter/src/utils/pageModel/page_model.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get the screen size
    final Size size = MediaQuery.of(context).size;

    return PageModel(
      child: SizedBox(
        child: RegisterSteps(
          size: size,
        ),
      ),
    );
  }
}
