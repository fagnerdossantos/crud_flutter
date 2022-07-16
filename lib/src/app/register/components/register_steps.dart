import 'package:flutter/material.dart';

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

    return Column(
      children: [
        // 35%
        SizedBox(
          height: height * 0.35,
        ),

        // 10%
        SizedBox(
          height: height * 0.1,
          width: width,

          // Content
          child: Text(
            _hint[0],
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

        Container(
          // Size
          height: height * 0.05,
          width: width,

          // Style
          decoration: BoxDecoration(
            // Gradient
            gradient: LinearGradient(
              colors: [
                //Colors.blue,
                Colors.cyan.withOpacity(0.9),
                Colors.pink.withOpacity(0.8),
                Colors.purple,
              ],
            ),

            // Radius
            borderRadius: BorderRadius.circular(20.0),
          ),

          child: const Center(
            child: Text(
              "Next",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
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
