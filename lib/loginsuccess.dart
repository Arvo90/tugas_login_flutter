import 'package:flutter/material.dart';

class loginsuccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null, // Menghilangkan AppBar
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/img/check.png', // Ubah path gambar sesuai dengan lokasi gambar Anda
              width: 100,
              height: 100,
            ),
            SizedBox(height: 20),
            Text(
              'Your login up was successful',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                // Navigasi ke halaman Start
                Navigator.pushNamed(context, '/start');
              },
              child: Text(
                'Continue to Home',
                style: TextStyle(
                  color: Color(0xFF2D4990), // Warna teks: #2D4990
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}