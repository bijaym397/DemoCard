import 'package:flutter/material.dart';

class CommonScaffold extends StatelessWidget {
  const CommonScaffold({Key? key, this.title, this.body}) : super(key: key);
  final String? title;
  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title ?? "Card"), centerTitle: true),
      body: body ?? Text(title ?? "Card "),
    );
  }
}
