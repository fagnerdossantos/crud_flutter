import 'dart:math';

class RegisterIdController {
  // ID
  late final int _id;
  int get id => _id;

  // Generate ID
  void generateId() => _id = Random().nextInt(999999);
}
