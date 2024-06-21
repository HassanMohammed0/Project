import 'dart:convert';
import 'package:dio/dio.dart';

// Function to handle user login
Future<void> loginUser(String email, String password) async {
  try {
    // Create Dio instance
    Dio dio = Dio();

    // Define login endpoint URL
    String loginUrl = 'https://api.stripe.com/v1/login';

    // Define login credentials
    Map<String, dynamic> data = {
      'email': email,
      'password': password,
    };

    // Encode login credentials to JSON
    String jsonData = json.encode(data);

    // Send POST request to login endpoint
    Response response = await dio.post(
      loginUrl,
      data: jsonData,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
        },
      ),
    );

    // Handle response
    if (response.statusCode == 200) {
      // Login successful, handle token
      String token = response.data['token'];
      print('Login successful. Token: $token');
    } else {
      // Login failed, handle error
      print('Login failed: ${response.statusCode}');
    }
  } catch (e) {
    // Handle error
    print('Error during login: $e');
  }
}

// Function to handle user registration
Future<void> registerUser(String email, String password) async {
  try {
    // Create Dio instance
    Dio dio = Dio();

    // Define registration endpoint URL
    String registerUrl = 'https://api.stripe.com/v1/register';

    // Define registration credentials
    Map<String, dynamic> data = {
      'email': email,
      'password': password,
    };

    // Encode registration credentials to JSON
    String jsonData = json.encode(data);

    // Send POST request to registration endpoint
    Response response = await dio.post(
      registerUrl,
      data: jsonData,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
        },
      ),
    );

    // Handle response
    if (response.statusCode == 200) {
      // Registration successful, handle token
      String token = response.data['token'];
      print('Registration successful. Token: $token');
    } else {
      // Registration failed, handle error
      print('Registration failed: ${response.statusCode}');
    }
  } catch (e) {
    // Handle error
    print('Error during registration: $e');
  }
}

void main() {
  // Example usage
  loginUser('example@email.com', 'password123');
  registerUser('newuser@email.com', 'newpassword456');
}
