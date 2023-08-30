import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/login_data.dart';
import '../repositories/auth_repo.dart';
import '../repositories/utils/api_response.dart';

class LoginController extends GetxController {
  final _loginData = LoginData(mobile: '', password: '').obs;

  bool get isButtonDisabled => _loginData.value.mobile.isEmpty || _loginData.value.password.isEmpty;

  void updateMobile(String value) => _loginData.update((data) => data!.mobile = value);
  void updatePassword(String value) => _loginData.update((data) => data!.password = value);

  final _authRepository = AuthRepository();

  Future<void> login() async{
    if (isButtonDisabled) return;

    final response = await _authRepository.login(
      _loginData.value.mobile,
      _loginData.value.password,
    );

    if (response is Success) {
      // Handle success
    } else if (response is Error) {
      Get.showSnackbar(
        const GetSnackBar(
          message: "Some error occurred while Login",
        )
      );
    }
  }
}
