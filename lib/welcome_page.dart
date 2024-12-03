import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Teks "welcome"
              const Text(
                'welcome',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),

              // Logo
              Image.asset(
                'assets/images/landbow.png', // Ganti path sesuai file Anda
                width: 200,
                height: 100,
              ),
              const SizedBox(height: 24),

              // Tombol Login dan Register
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Tombol Login
                  ElevatedButton(
                    onPressed: () {
                      // Navigasi ke halaman login
                      Navigator.pushNamed(context, '/login');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 12,
                      ),
                    ),
                    child: const Text('Login'),
                  ),
                  const SizedBox(width: 16),

                  // Tombol Register
                  ElevatedButton(
                    onPressed: () {
                      // Navigasi ke halaman register
                      Navigator.pushNamed(context, '/register');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 12,
                      ),
                    ),
                    child: const Text('Register'),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Subtitle
              const Text(
                '"Please log in or register to continue."',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
