// ignore_for_file: inference_failure_on_function_invocation

import 'package:mobilecurling_lobby/core/shared_classes/user/user.dart';
import 'package:mobilecurling_lobby/core/utils.dart';

Future<bool> validate(User user) async {
  try {
    await dio.post(
      '$authServerUrl/validate',
      data: user.toJson(),
    );
    return true;
  } catch (e, s) {
    print(e);
    print(s);
    return false;
  }
}
