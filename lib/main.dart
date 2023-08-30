import 'package:demo_card/app/views/home.dart';
import 'package:demo_card/app/views/sign_up.dart';
import 'package:flutter/material.dart';
import 'app/views/add_card_details.dart';
import 'app/views/login.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: '/home', // Initial route
      getPages: [
        GetPage(name: '/login', page: () => const LoginView()),
        GetPage(name: '/signup', page: () => const SignUp()),
        GetPage(name: '/addCard', page: () => const AddCardDetails()),
        GetPage(name: '/home', page: () => const Home()),
      ],
    );
  }
}
