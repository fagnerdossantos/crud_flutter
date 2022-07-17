import 'package:crud_flutter/src/app/register/controllers/register_index_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BackArrow extends StatelessWidget {
  const BackArrow({Key? key, required this.size}) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    // Size
    final double height = size.height;
    final double width = size.width;

    // Controller
    final controller = context.watch<RegisterIdexController>();

    return GestureDetector(
      // Action
      onTap: () => controller.index > 0
          ? controller.back()
          : Navigator.pushNamed(context, "/login"),

      // Content
      child: SizedBox(
        width: width,
        child: Row(
          children: [
            Icon(
              Icons.arrow_back,
              size: height * 0.04,
            ),
          ],
        ),
      ),
    );
  }
}
