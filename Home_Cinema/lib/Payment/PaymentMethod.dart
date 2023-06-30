import 'package:flutter/material.dart';
import 'PaymentReceipt.dart';

class PaymentMethod extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Method'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(150),
              child: Container(
                width: 150,
                height: 150,
                child: ElevatedButton(
                  onPressed: () {
                    // Perform Visa payment logic

                    // Navigate to PaymentReceipt page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PaymentReceipt(),
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/Visa.jpg', // Replace with the actual asset path for the Visa image
                        width: 120,
                        height: 120,
                      ),
                      Text('Visa', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(150),
              child: Container(
                width: 150,
                height: 150,
                child: ElevatedButton(
                  onPressed: () {
                    // Perform online banking payment logic

                    // Navigate to PaymentReceipt page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PaymentReceipt(),
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/FPX.png', // Replace with the actual asset path for the Online Banking image
                        width: 120,
                        height: 120,
                      ),
                      Text('Online Banking', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(150),
              child: Container(
                width: 150,
                height: 150,
                child: ElevatedButton(
                  onPressed: () {
                    // Perform Touch n' Go payment logic

                    // Navigate to PaymentReceipt page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PaymentReceipt(),
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/TnG.png', // Replace with the actual asset path for the Touch n' Go image
                        width: 120,
                        height: 120,
                      ),
                      Text('Touch \'n Go', style: TextStyle(fontSize: 16)),
                    ],
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