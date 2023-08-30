import 'package:demo_card/app/repositories/utils/api_response.dart';
import 'package:get/get.dart';
import '../models/signup_data.dart';
import '../repositories/auth_repo.dart';

class SignupController extends GetxController {

  final _authRepository = AuthRepository();

  var signupData = SignupData(
    mobile: '',
    otp: '',
    password: '',
    firstName: '',
    userName: '',
    email: '',
  ).obs;

  bool get isButtonDisabled =>
      signupData.value.mobile.isEmpty ||
          signupData.value.otp.isEmpty ||
          signupData.value.password.isEmpty ||
          signupData.value.firstName.isEmpty ||
          signupData.value.userName.isEmpty;

  bool get areFieldsDisabled => signupData.value.otp.isEmpty;

  void updateMobile(String value) => signupData.update((data) => data!.mobile = value);

  void updateOTP(String value) {
    signupData.update((data) => data!.otp = value);
    if (value.isNotEmpty) {
      enableFields();
    } else {
      disableFields();
    }
  }

  void updatePassword(String value) => signupData.update((data) => data!.password = value);
  void updateFirstName(String value) => signupData.update((data) => data!.firstName = value);
  void updateUserName(String value) => signupData.update((data) => data!.userName = value);
  void updateEmail(String value) => signupData.update((data) => data!.email = value);

  Future<void> signUp() async{
    if (isButtonDisabled) return;

    final response = await _authRepository.signUp(signupData.value);

    if (response is Success) {
      Get.showSnackbar(
          const GetSnackBar(
            duration: Duration(seconds: 2),
            message: "Signup Successful",
          )
      );
      Get.offNamed("login");
    } else if (response is Error) {
      Get.showSnackbar(
          GetSnackBar(
            duration: const Duration(seconds: 2),
            message: (response as Error).errorMessage,
          )
      );
    }
  }

  Future<void> sendOtp() async {
    final response = await _authRepository.sendOtp(signupData.value.mobile);

    if (response is Success) {
      Get.showSnackbar(
          const GetSnackBar(
            duration: Duration(seconds: 2),
            message: "OTP Sent",
          )
      );
    } else if (response is Error) {
      Get.showSnackbar(
          GetSnackBar(
            duration: const Duration(seconds: 2),
            message: response.errorMessage,
          )
      );
    }
  }

  void enableFields() {
    signupData.update((data) => data!.otp.isNotEmpty);
  }

  void disableFields() {
    signupData.update((data) => data!.otp = '');
  }
}
