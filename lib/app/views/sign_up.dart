import 'package:demo_card/widgets.dart';
import 'package:flutter/material.dart';

import '../controllers/signup_controller.dart';
import 'package:get/get.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  final SignupController _controller = Get.put(SignupController());

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      title: "Signup",
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: _controller.updateMobile,
                decoration: const InputDecoration(labelText: 'Mobile'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: _controller.sendOtp,
                child: const Text('Send OTP'),
              ),
              const SizedBox(height: 16),
              TextField(
                onChanged: _controller.updateOTP,
                decoration: const InputDecoration(labelText: 'OTP'),
              ),
              const SizedBox(height: 16),
              TextField(
                onChanged: _controller.updatePassword,
                obscureText: true,
                decoration: const InputDecoration(labelText: 'Password'),
                enabled: _controller.areFieldsDisabled,
              ),
              const SizedBox(height: 16),
              TextField(
                onChanged: _controller.updateFirstName,
                decoration: const InputDecoration(labelText: 'First Name'),
                enabled: _controller.areFieldsDisabled,
              ),
              const SizedBox(height: 16),
              TextField(
                onChanged: _controller.updateUserName,
                decoration: const InputDecoration(labelText: 'Username'),
                enabled: _controller.areFieldsDisabled,
              ),
              const SizedBox(height: 16),
              TextField(
                onChanged: _controller.updateEmail,
                decoration: const InputDecoration(labelText: 'Email (Optional)'),
                enabled: _controller.areFieldsDisabled,
              ),
              const SizedBox(height: 24),
              Obx(() => ElevatedButton(
                onPressed: _controller.isButtonDisabled ? null : _controller.signUp,
                child: const Text('Sign Up'),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
