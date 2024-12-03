import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        leading: const BackButton(),
      ),
      body: Container(
        child: Center(
          child: SingleChildScrollView( // Menambahkan scroll jika konten overflow
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Logo di atas kotak
                Column(
                  children: [
                    Image.asset(
                      'assets/images/landbow.png', // Ganti dengan path logo kamu
                      width: 200, // Atur ukuran logo
                      height: 200,
                    ),
                    const SizedBox(height: 16), // Jarak antara logo dan kotak
                  ],
                ),

                // Box dengan dekorasi
                Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      // Teks "HELLO" dan "Sign into Account"
                      const Center(
                        child: Text(
                          'HELLO',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Center(child: Text('Sign into Account')),

                      // Input Fields
                      const SizedBox(height: 24),
                      const TextField(
                        decoration: InputDecoration(
                          labelText: 'Username',
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 16),
                      const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          prefixIcon: Icon(Icons.lock),
                          border: OutlineInputBorder(),
                        ),
                      ),

                      // Login Button dengan lebar yang sama dengan TextField
                      const SizedBox(height: 16),
                      SizedBox(
                        width: double.infinity, // Membuat tombol selebar TextField
                        child: ElevatedButton(
                          onPressed: () {
                            // Ganti dengan logika autentikasi dan navigasi
                            Navigator.pushReplacementNamed(context, '/home');
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange),
                          child: const Text('Login'),
                        ),
                      ),
                    ],
                  ),
                ),

                // Register Now Section
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account? "),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/register');
                      },
                      child: const Text(
                        'Register Now',
                        style: TextStyle(color: Colors.orange),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
