import 'package:flutter/material.dart';
import 'signinsuccess.dart';
class SignUp extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUp> {
  bool _rememberMe = false; // Deklarasi dan inisialisasi variabel _rememberMe

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD5F2E8), // Warna latar belakang: #D5F2E8
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 80.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Welcome!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Sign up for the Chunky app',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 30),
              TextFieldContainer(
                hintText: 'Enter your name',
                size: Size(600, 50),
              ),
              SizedBox(height: 30),
              TextFieldContainer(
                hintText: 'Last name',
                size: Size(600, 50),
              ),
              SizedBox(height: 30),
              TextFieldContainer(
                hintText: 'Email/phone number',
                size: Size(600, 50),
              ),
              SizedBox(height: 30),
              TextFieldContainer(
                hintText: 'Password',
                size: Size(600, 50),
              ),
              SizedBox(height: 30),
              TextFieldContainer(
                hintText: 'Confirm password',
                size: Size(600, 50),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 300),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center, // Align children vertically centered
                  children: [
                    Checkbox(
                      value: _rememberMe,
                      onChanged: (value) {
                        setState(() {
                          _rememberMe = value ?? false;
                        });
                      },
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'By clicking on ‘sign up’, you’re agreeing to the Chunky app ',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                            maxLines: 2,
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  // Handle aksi syarat dan ketentuan di sini
                                },
                                child: Text(
                                  'Terms of Service',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFF2D4990),
                                    backgroundColor: Color(0xFFD5F2E8),
                                  ),
                                ),
                              ),
                              Text(
                                ' and ',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  // Handle aksi kebijakan privasi di sini
                                },
                                child: Text(
                                  'Privacy Policy',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFF2D4990),
                                    backgroundColor: Color(0xFFD5F2E8),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  // Navigasi ke halaman successful
                  Navigator.push(context, 
                   MaterialPageRoute(builder: (context) => logsuccess()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF2D4990),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final String hintText;
  final Size size;

  const TextFieldContainer({required this.hintText, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
