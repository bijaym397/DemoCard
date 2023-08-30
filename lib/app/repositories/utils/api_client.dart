import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiClient {
  final String baseUrl = "https://hdfc-bank-9qmz.onrender.com/api/v1/user/";

  ApiClient();

  Future<http.Response> post(String endpoint, Map<String, dynamic> body) async {
    final response = await http.post(Uri.parse('$baseUrl/$endpoint'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(body));

    return response;
  }

  Future<http.Response> get(String endpoint) async {
    final response = await http.get(Uri.parse('$baseUrl/$endpoint'));

    return response;
  }
}


