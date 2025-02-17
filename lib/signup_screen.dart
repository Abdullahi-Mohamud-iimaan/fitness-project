import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Background-ka madow
      appBar: AppBar(
        backgroundColor: Colors.blueAccent, // Midabka AppBar
        title: const Text(
          'Sign Up',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.white, // Text-ka AppBar waa cad
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Create an account',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Text-ka waa cad
              ),
            ),
            const SizedBox(height: 30),
            // Username field
            TextField(
              style: const TextStyle(color: Colors.white), // Text-ka cad
              decoration: const InputDecoration(
                labelText: 'Username',
                labelStyle: TextStyle(color: Colors.white), // Label cad
                filled: true,
                fillColor: Colors.grey, // Background of the input
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 15),
            // Email field
            TextField(
              style: const TextStyle(color: Colors.white), // Text-ka cad
              decoration: const InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(color: Colors.white), // Label cad
                filled: true,
                fillColor: Colors.grey,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 15),
            // Password field
            TextField(
              obscureText: true,
              style: const TextStyle(color: Colors.white), // Text-ka cad
              decoration: const InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.white), // Label cad
                filled: true,
                fillColor: Colors.grey,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 30),
            // Sign up button
            ElevatedButton(
              onPressed: () {
                // Action to register user can be added here
                Navigator.pushReplacementNamed(context, '/fitness_home');
              },
              child: const Text(
                'Sign Up',
                style: TextStyle(fontSize: 18),
              ),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blueAccent, // Text color
                minimumSize: const Size(double.infinity, 50), // Button size
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30), // Rounded button
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Alternative action (Sign In)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already have an account?',
                  style: TextStyle(
                    color: Colors.white, // Text waa cad
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigate to the Login screen
                    Navigator.pushReplacementNamed(context, '/login_screen');
                  },
                  child: const Text(
                    'Log in',
                    style: TextStyle(
                      color: Colors.blueAccent, // Link text color
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
