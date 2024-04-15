import 'package:flutter/material.dart';
import 'login.dart'; // Import the second page file
import 'signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigation Example',
      home: FirstPage(), // Set the home page to FirstPage
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/img/APICTUREOFWOMEN.png',
              width: 200,
            ),
            Image.asset(
              'assets/img/BUYANDSELLTEXT.png',
              width: 200,
            ),
            SizedBox(height: 50),
            Image.asset(
              'assets/img/DISCOUNTTEXT.png',
              width: 200,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to the second page when the button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LogIn()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF2D4990), // Background color
              ),
              child: Text('Go to Log In Page'),
            ),SizedBox(height: 20,),
            
            ElevatedButton(
              onPressed: () {
                // Navigate to the second page when the button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUp()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF2D4990), // Background color
              ),
              child: Text('Go to Sign Up Page'),
            ),
          ],
        ),
      ),
    );
  }
}
