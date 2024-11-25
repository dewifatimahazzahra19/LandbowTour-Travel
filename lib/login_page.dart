import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
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
                    'assets/images/landbow.jpg', // Ganti dengan path logo kamu
                    width: 200, // Atur ukuran logo
                    height: 200,
                  ),
                  SizedBox(height: 16), // Jarak antara logo dan kotak
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
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    // Teks "HELLO" dan "Sign into Account"
                    Center(
                      child: Text(
                        'HELLO',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 4),
                    Center(child: Text('Sign into Account')),

                    // Input Fields
                    SizedBox(height: 24),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Username',
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 16),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    // SizedBox(height: 8),
                    // Align(
                    //   alignment: Alignment.centerRight,
                    //   child: TextButton(
                    //     onPressed: () {},
                    //     child: Text('Forgot password?'),
                    //   ),
                    // ),

                    // Login Button dengan lebar yang sama dengan TextField
                    SizedBox(height: 16),
                    SizedBox(
                      width: double.infinity, // Membuat tombol selebar TextField
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange),
                        child: Text('Login'),
                      ),
                    ),
                  ],
                ),
              ),

              // Register Now Section
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account? "),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/register');
                    },
                    child: Text(
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
    );
  }
}
