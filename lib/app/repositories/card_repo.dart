import 'package:demo_card/app/repositories/utils/api_client.dart';
import 'package:demo_card/app/repositories/utils/api_end_points.dart';
import 'package:demo_card/app/repositories/utils/api_response.dart';

import '../models/card_forn_data.dart';

class CardRepository {
  final _apiClient = ApiClient();

  Future<ApiResponse<void>> addCard(CardData cardData) async {
    try {
      final response = await _apiClient.post(
        ApiEndpoints.submitCreditDetail,
        cardData.toJson(),
      );

      if (response.statusCode == 201) {
        return Success(null);
      } else {
        return Error('Adding card failed');
      }
    } catch (e) {
      return Error('An error occurred');
    }
  }
}
