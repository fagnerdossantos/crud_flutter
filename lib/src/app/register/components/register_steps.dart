import 'package:crud_flutter/src/app/register/components/back_arrow.dart';
import 'package:crud_flutter/src/app/register/components/register_button.dart';
import 'package:crud_flutter/src/app/register/controllers/register_index_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegisterSteps extends StatelessWidget {
  final Size size;
  const RegisterSteps({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size
    final double height = size.height;
    final double width = size.width;

    // Controller
    final controller = context.watch<RegisterIdexController>();

    return Column(
      children: [
        // 25%
        SizedBox(
          height: height * 0.25,
        ),

        // 1%
        BackArrow(size: size),

        // 10%
        SizedBox(
          height: height * 0.1,
        ),

        // 10%
        SizedBox(
          height: height * 0.1,
          width: width,

          // Content
          child: Text(
            _hint[controller.index],
            style: TextStyle(
              fontSize: height * 0.04,
            ), // 4%
          ),
        ),

        // 1%
        SizedBox(
          height: height * 0.01,
        ),

        // 10%
        SizedBox(
          height: height * 0.1,
          width: width,

          // Content
          child: TextField(),
        ),

        // 5%
        SizedBox(
          height: height * 0.05,
        ),

        //
        NextButton(
          size: size,
        ),
      ],
    );
  }
}

List<String> _hint = [
  "Type your name",
  "Type your email",
  "Type your password",
  "confirm your password",
];
