import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('การตั้งค่า'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Text('หน้านี้สำหรับการตั้งค่า', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
