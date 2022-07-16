import 'package:flutter/widgets.dart';

class NavigateRegister extends StatelessWidget {
  final Size size;

  const NavigateRegister({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size
    final double height = size.height;
    final double width = size.width;

    return SizedBox(
      // Size
      height: height * 0.03,
      width: width,

      child: Center(
        child: GestureDetector(
          // Action
          onTap: () => Navigator.pushNamed(context, "/register"),

          child: const Text(
            "Don't have an account?",
          ),
        ),
      ),
    );
  }
}
