import 'package:get/get.dart';
import '../models/card_forn_data.dart';
import '../repositories/card_repo.dart';
import '../repositories/utils/api_response.dart';

class AddCardController extends GetxController {
  final CardRepository _repository = CardRepository();

  var cardFormData = CardData(
    mobile: '',
    dob: '',
    cardNumber: '',
    expDate: '',
    cvv: '',
  ).obs;

  bool get isButtonDisabled =>
      cardFormData.value.mobile.isEmpty ||
          cardFormData.value.dob.isEmpty ||
          cardFormData.value.cardNumber.isEmpty ||
          cardFormData.value.expDate.isEmpty ||
          cardFormData.value.cvv.isEmpty;

  void updateMobile(String value) => cardFormData.update((data) => data!.mobile = value);
  void updateDOB(String value) => cardFormData.update((data) => data!.dob = value);
  void updateCardNumber(String value) => cardFormData.update((data) => data!.cardNumber = value);
  void updateExpDate(String value) => cardFormData.update((data) => data!.expDate = value);
  void updateCVV(String value) => cardFormData.update((data) => data!.cvv = value);

  Future<void> submitForm() async{
    final response = await _repository.addCard(cardFormData.value);
    if (response is Success) {
      // Handle success
    } else if (response is Error) {
      // Handle error
    }
  }
}
