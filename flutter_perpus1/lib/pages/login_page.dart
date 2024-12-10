import 'package:flutter/material.dart';
import 'login_form_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            Image.asset(
              'assets/images/dongkak.jpg',
              width: 220,
              height: 220,
            ),
            const SizedBox(height: 0),
            // Store Name
            const Text(
              'Komik DongKak',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 105, 220, 255),
              ),
            ),
            const SizedBox(height: 25),
            // Admin Login Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginFormPage(isAdmin: true),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 89, 236, 255),
                  minimumSize: const Size.fromHeight(40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: const Text(
                  'Login Admin',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            // User Login Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginFormPage(isAdmin: false),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                  minimumSize: const Size.fromHeight(40),
                  side: const BorderSide(color: Color.fromARGB(255, 119, 208, 255)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: const Text(
                  'Login User',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 101, 209, 255),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
} 