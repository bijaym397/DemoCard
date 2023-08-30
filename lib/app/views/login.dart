import 'package:demo_card/widgets.dart';
import 'package:flutter/material.dart';
import '../controllers/login_controller.dart';
import 'package:get/get.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  final LoginController _controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      title:"Login",
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: _controller.updateMobile,
              decoration: const InputDecoration(labelText: 'Mobile'),
            ),
            const SizedBox(height: 16),
            TextField(
              onChanged: _controller.updatePassword,
              obscureText: true,
              decoration: const InputDecoration(labelText: 'Password'),
            ),
            const SizedBox(height: 24),
            Obx(() => ElevatedButton(
              onPressed: _controller.isButtonDisabled ? null : _controller.login,
              child: const Text('Login'),
            )),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: (){
                Get.toNamed("signup");
              },
              child: const Text('Signup'),
            )
          ],
        ),
      ),
    );
  }
}
