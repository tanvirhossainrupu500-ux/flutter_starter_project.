import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Drinkwell Balance Checker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BalanceCheckerScreen(),
    );
  }
}

class BalanceCheckerScreen extends StatefulWidget {
  const BalanceCheckerScreen({super.key});

  @override
  State<BalanceCheckerScreen> createState() => _BalanceCheckerScreenState();
}

class _BalanceCheckerScreenState extends State<BalanceCheckerScreen> {
  final _refController = TextEditingController();
  final _mobileController = TextEditingController();
  final _cardController = TextEditingController();

  String _result = "";

  void _checkBalance() {
    setState(() {
      // ডেমো হিসেবে শুধু ইনপুট দেখাচ্ছে
      _result =
          "Reference: ${_refController.text}\nMobile: ${_mobileController.text}\nCard: ${_cardController.text}\n\n👉 Balance: 1200 BDT (Demo)";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drinkwell Balance Checker"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _refController,
              decoration: const InputDecoration(
                labelText: "Reference Number",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _mobileController,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                labelText: "Mobile Number",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _cardController,
              decoration: const InputDecoration(
                labelText: "Card Number",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: _checkBalance,
                child: const Text("Check Balance"),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              _result,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
