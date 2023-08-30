import 'dart:convert';

import 'package:demo_card/app/repositories/utils/api_client.dart';
import 'package:demo_card/app/repositories/utils/api_response.dart';
import '../models/signup_data.dart';
import '../models/user_model.dart';
import 'utils/api_end_points.dart';

class AuthRepository {

  final _apiClient = ApiClient();

  Future<ApiResponse<User>> login(String mobile, String password) async {
    try {
      final response = await _apiClient.post(
        ApiEndpoints.login,
        {'mobile': mobile, 'password': password},
      );

      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        final user = User.fromJson(jsonData);
        return Success(user);
      } else {
        return Error('Invalid credentials');
      }
    } catch (e) {
      return Error('An error occurred');
    }
  }

  Future<ApiResponse<User>> signUp(SignupData signupData) async {
    try {
      final response = await _apiClient.post(
        ApiEndpoints.register,
        signupData.toJson(),
      );

      if (response.statusCode == 201) {
        final jsonData = json.decode(response.body);
        final user = User.fromJson(jsonData);
        return Success(user);
      } else {
        return Error('Signup failed');
      }
    } catch (e) {
      return Error('An error occurred');
    }
  }


  Future<ApiResponse<void>> sendOtp(String mobile) async {
    try {
      final response = await _apiClient.post(
        ApiEndpoints.sendOtp,
        {'mobile': mobile},
      );

      if (response.statusCode == 200) {
        return Success(null);
      } else {
        return Error('Sending OTP failed');
      }
    } catch (e) {
      return Error('An error occurred');
    }
  }
}
