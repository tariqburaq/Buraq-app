import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const BuraqApp());
}

class BuraqApp extends StatelessWidget {
  const BuraqApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Buraq App'), backgroundColor: Colors.green),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.electric_bike, size: 100, color: Colors.green),
              SizedBox(height: 20),
              Text('Buraq App Ready!', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
              Text('Firebase Connected - APK Ready'),
            ],
          ),
        ),
      ),
    );
  }
}
