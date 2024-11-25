
// import 'package:flutter/material.dart';

// class LoginPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Login'),
//         leading: BackButton(),
//         backgroundColor: Colors.orange,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Center(
//               child: Text(
//                 'HELLO',
//                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//               ),
//             ),
//             SizedBox(height: 4),
//             Center(child: Text('Sign into Account')),
//             SizedBox(height: 24),
//             TextField(
//               decoration: InputDecoration(
//                 labelText: 'Username',
//                 prefixIcon: Icon(Icons.person),
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 16),
//             TextField(
//               obscureText: true,
//               decoration: InputDecoration(
//                 labelText: 'Password',
//                 prefixIcon: Icon(Icons.lock),
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 8),
//             Align(
//               alignment: Alignment.centerRight,
//               child: TextButton(
//                 onPressed: () {},
//                 child: Text('Forgot password?'),
//               ),
//             ),
//             SizedBox(height: 16),
//             ElevatedButton(
//               onPressed: () {},
//               style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
//               child: Text('Login'),
//             ),
//             SizedBox(height: 16),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 IconButton(
//                   onPressed: () {},
//                   icon: Icon(Icons.facebook),
//                   color: Colors.blue,
//                 ),
//                 IconButton(
//                   onPressed: () {},
//                   icon: Icon(Icons.camera_alt),
//                   color: Colors.pink,
//                 ),
//                 IconButton(
//                   onPressed: () {},
//                   icon: Icon(Icons.email),
//                   color: Colors.red,
//                 ),
//               ],
//             ),
//             SizedBox(height: 24),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text("Don't have an account? "),
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.pushNamed(context, '/register');
//                   },
//                   child: Text(
//                     'Register Now',
//                     style: TextStyle(color: Colors.orange),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }