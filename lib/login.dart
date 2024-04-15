import 'package:flutter/material.dart';
import 'loginsuccess.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD5F2E8),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Welcome Back!',style: TextStyle(fontSize: 24),),
            SizedBox(height: 100),
            Padding(
              padding: EdgeInsets.only(right: 460),
              child: Text('Log In to your account'),
            ),
            SizedBox(height: 10),
            Container(
              width: 650,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your Name',
                  labelText: 'Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none,
                  ),
                ),
                onChanged: (text) {
                  // This function will be called whenever the text in the field changes
                  print('Text field value: $text');
                },
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 650,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none,
                  ),
                ),
                onChanged: (text) {
                  // This function will be called whenever the text in the field changes
                  print('Text field value: $text');
                },
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 280),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  Text('Remember me'),
                  Padding(
                      padding: EdgeInsets.only(left: 410),
                      child: Text('forgotten password?')),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to the second page when the button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => loginsuccess()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF2D4990),
                fixedSize: Size(200, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'Log In',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'OR',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Color.fromARGB(255, 255, 255, 255), 
                fixedSize: Size(260, 50)
              ),
              icon: Image.asset(
                'assets/img/google.png',
                width: 20,
                height: 20,
              ),
              label: Text('Log in with your Google account', style: TextStyle(color: Colors.black)),
            ),
            SizedBox(height: 20,),
            Image.asset('assets/img/text.png'),
        
          ],
        ),
      ),
    );
  }
}
