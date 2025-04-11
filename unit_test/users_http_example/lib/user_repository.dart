import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:users_http_example/user_model.dart';

class UserRepository {
  final http.Client client;
  UserRepository({required this.client});

  Future<User> fetchUser() async {
    try {
      final response = await client.get(
        Uri.parse('https://jsonplaceholder.typicode.com/users/1'),
      );

      if (response.statusCode == 200) {
        final user = User.fromJson(jsonDecode(response.body));

        return user;
      } else {
        throw Exception('Failed to load user');
      }
    } catch (e) {
      rethrow;
    } finally {}
  }
}
