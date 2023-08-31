import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Card Details"), centerTitle: true,),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/4567.jpeg",
                height: 200, fit: BoxFit.fill, width: double.infinity),
            const SizedBox(height: 18),
            const Text(
              "John Doe",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'Expiry Date: 12/25',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
            ),
            const Text(
              'CVV: 987',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'Bank Name: HDFC bank',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
