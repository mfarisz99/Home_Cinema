import 'package:flutter/material.dart';
import 'package:testis/MainPage/BottomBar.dart';
import 'package:testis/Payment/PurchasedPage.dart';

class PaymentReceipt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Receipt'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Payment pending', style: TextStyle(fontSize: 50)),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Navigate back to the PurchasePage
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => PurchasedPage()),
                );

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Center(
                      child: Text('Payment completed, Enjoy your show !'),
                    ),
                    duration: Duration(seconds: 5),
                    backgroundColor: Colors.green,
                  ),
                );
                // Navigate back to the login page
                Future.delayed(Duration(seconds: 3), () {
                  Navigator.pop(context);
                });
              },
              child: Text('Continue payment'),
            ),
          ],
        ),
      ),
    );
  }
}