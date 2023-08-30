import 'package:flutter/material.dart';

import '../controllers/add_card_controller.dart';
import 'package:get/get.dart';

class UserCardDetail extends StatefulWidget {
  const UserCardDetail({Key? key}) : super(key: key);

  @override
  State<UserCardDetail> createState() => _UserCardDetailState();
}

class _UserCardDetailState extends State<UserCardDetail> {

  final AddCardController _controller = Get.put(AddCardController());

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            onChanged: _controller.updateDOB,
            decoration: const InputDecoration(labelText: 'Date of Birth'),
          ),
          const SizedBox(height: 16),
          TextField(
            onChanged: _controller.updateCardNumber,
            decoration: const InputDecoration(labelText: 'Card Number'),
          ),
          const SizedBox(height: 16),
          TextField(
            onChanged: _controller.updateExpDate,
            decoration: const InputDecoration(labelText: 'Expiration Date'),
          ),
          const SizedBox(height: 16),
          TextField(
            onChanged: _controller.updateCVV,
            decoration: const InputDecoration(labelText: 'CVV'),
          ),
          const SizedBox(height: 24),
          Obx(() => ElevatedButton(
            onPressed: _controller.isButtonDisabled ? null : _controller.submitForm,
            child: const Text('Submit'),
          )),
        ],
      ),
    );
  }
}

