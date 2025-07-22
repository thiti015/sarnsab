import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('โปรไฟล์'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Text('หน้านี้สำหรับโปรไฟล์ผู้ใช้', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
