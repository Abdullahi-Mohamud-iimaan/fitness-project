import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fitness_app_ui/login_screen.dart';
import 'package:fitness_app_ui/signup_screen.dart'; // Import SignupScreen
import 'fitness_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      initialRoute: '/login_screen',
      routes: {
        '/login_screen': (context) => const LoginScreen(),
        '/fitness_home': (context) => const FitnessHomePage(),
        '/signup_screen': (context) =>
            const SignupScreen(), // Ku dar waddada Signup
      },
    );
  }
}
