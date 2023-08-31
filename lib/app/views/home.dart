import 'package:demo_card/app/views/card_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Card App"), centerTitle: true),
      body: UserDetails(),
    );
  }
}

class UserDetails extends StatelessWidget {
  final List<CreditCard> creditCards = [
    CreditCard(
      cardNumber: '**** **** **** 1234',
      cardHolder: 'John Doe',
      expiryDate: '12/25',
      cvv: '123',
      imageURL: 'assets/4567.jpeg',
      bankName: 'HDFC bank',
    ),
    CreditCard(
      cardNumber: '**** **** **** 5678',
      cardHolder: 'Jane Smith',
      expiryDate: '08/23',
      imageURL: 'assets/4567.jpeg',
      cvv: '656',
      bankName: 'Bandanna bank',
    ),
    CreditCard(
      cardNumber: '**** **** **** 1234',
      cardHolder: 'John Doe',
      expiryDate: '12/25',
      cvv: '123',
      imageURL: 'assets/4567.jpeg',
      bankName: 'HDFC bank',
    ),
    CreditCard(
      cardNumber: '**** **** **** 5678',
      cardHolder: 'Jane Smith',
      expiryDate: '08/23',
      imageURL: 'assets/4567.jpeg',
      cvv: '656',
      bankName: 'Bandanna bank',
    ),
    CreditCard(
      cardNumber: '**** **** **** 1234',
      cardHolder: 'John Doe',
      expiryDate: '12/25',
      cvv: '123',
      imageURL: 'assets/4567.jpeg',
      bankName: 'HDFC bank',
    ),
    CreditCard(
      cardNumber: '**** **** **** 1234',
      cardHolder: 'John Doe',
      expiryDate: '12/25',
      cvv: '123',
      imageURL: 'assets/4567.jpeg',
      bankName: 'HDFC bank',
    ),
    CreditCard(
      cardNumber: '**** **** **** 5678',
      cardHolder: 'Jane Smith',
      expiryDate: '08/23',
      imageURL: 'assets/4567.jpeg',
      cvv: '656',
      bankName: 'Bandanna bank',
    ),
    CreditCard(
      cardNumber: '**** **** **** 1234',
      cardHolder: 'John Doe',
      expiryDate: '12/25',
      cvv: '123',
      imageURL: 'assets/4567.jpeg',
      bankName: 'HDFC bank',
    ),
    CreditCard(
      cardNumber: '**** **** **** 5678',
      cardHolder: 'Jane Smith',
      expiryDate: '08/23',
      imageURL: 'assets/4567.jpeg',
      cvv: '656',
      bankName: 'Bandanna bank',
    ),
    CreditCard(
      cardNumber: '**** **** **** 1234',
      cardHolder: 'John Doe',
      expiryDate: '12/25',
      cvv: '123',
      imageURL: 'assets/4567.jpeg',
      bankName: 'HDFC bank',
    ),
    CreditCard(
      cardNumber: '**** **** **** 1234',
      cardHolder: 'John Doe',
      expiryDate: '12/25',
      cvv: '123',
      imageURL: 'assets/4567.jpeg',
      bankName: 'HDFC bank',
    ),
    CreditCard(
      cardNumber: '**** **** **** 1234',
      cardHolder: 'John Doe',
      expiryDate: '12/25',
      cvv: '123',
      imageURL: 'assets/4567.jpeg',
      bankName: 'HDFC bank',
    ),
    CreditCard(
      cardNumber: '**** **** **** 5678',
      cardHolder: 'Jane Smith',
      expiryDate: '08/23',
      imageURL: 'assets/4567.jpeg',
      cvv: '656',
      bankName: 'Bandanna bank',
    ),
    CreditCard(
      cardNumber: '**** **** **** 1234',
      cardHolder: 'John Doe',
      expiryDate: '12/25',
      cvv: '123',
      imageURL: 'assets/4567.jpeg',
      bankName: 'HDFC bank',
    ),
    CreditCard(
      cardNumber: '**** **** **** 5678',
      cardHolder: 'Jane Smith',
      expiryDate: '08/23',
      imageURL: 'assets/4567.jpeg',
      cvv: '656',
      bankName: 'Bandanna bank',
    ),
    CreditCard(
      cardNumber: '**** **** **** 1234',
      cardHolder: 'John Doe',
      expiryDate: '12/25',
      cvv: '123',
      imageURL: 'assets/4567.jpeg',
      bankName: 'HDFC bank',
    ),
    // Add more credit cards as needed
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: creditCards.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          child: Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        creditCards[index].cardHolder,
                        style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text('Expiry Date: ${creditCards[index].expiryDate}',
                          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),),
                      ),
                      Text('CVV: ${creditCards[index].cvv}',
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text('Bank Name: ${creditCards[index].bankName}',
                          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),),
                      ),
                    ],
                  ),
                  Image.asset(
                    creditCards[index].imageURL,
                    height: 100,
                    width: 100,
                  ),
                ],
              ),
            ),
          ),
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CardDetails()),
            );
            // Get.offNamed("/cardDetails");
          },
        );
      },
    );
  }
}

class CreditCard {
  final String cardNumber;
  final String cardHolder;
  final String expiryDate;
  final String cvv;
  final String imageURL;
  final String bankName;

  CreditCard({
    required this.cardNumber,
    required this.cardHolder,
    required this.expiryDate,
    required this.cvv,
    required this.imageURL,
    required this.bankName,
  });
}
