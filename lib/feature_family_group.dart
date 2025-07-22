import 'package:flutter/material.dart';

class FeatureFamilyGroupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ครอบครัว/กลุ่ม'),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Text('หน้านี้สำหรับครอบครัว/กลุ่ม', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
