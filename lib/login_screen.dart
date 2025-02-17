import 'package:fitness_app_ui/fitness_home_page.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome Back!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: emailController,
              style: const TextStyle(color: Colors.white), // Qoraalka Email cad
              decoration: const InputDecoration(
                labelText: 'Email', // Email-ka ku qor halkan
                labelStyle: TextStyle(color: Colors.white),
                hintText: 'Enter your email address',
                hintStyle: TextStyle(color: Colors.white60),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),
            TextField(
              controller: passwordController,
              obscureText: true,
              style:
                  const TextStyle(color: Colors.white), // Qoraalka Password cad
              decoration: const InputDecoration(
                labelText: 'Password', // Password-ka ku qor halkan
                labelStyle: TextStyle(color: Colors.white),
                hintText: 'Enter your password',
                hintStyle: TextStyle(color: Colors.white60),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            // Login Button
            ElevatedButton(
              onPressed: () {
                // Halkaan ku dar shaqada Login-ka
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FitnessHomePage(),
                  ),
                );
              },
              child: const Text('Login'),
              style: ElevatedButton.styleFrom(
                minimumSize:
                    const Size.fromHeight(50), // Xajmi ka dhig mid waasac ah
              ),
            ),
            const SizedBox(height: 15),
            // Sign Up Button (hooska Login button)
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                    context, '/signup_screen'); // Navigate to Signup
              },
              child: const Text('Sign Up'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                minimumSize:
                    const Size.fromHeight(50), // Xajmi ka dhig mid waasac ah
              ),
            ),
          ],
        ),
      ),
    );
  }
}
