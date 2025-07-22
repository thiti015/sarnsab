import 'package:flutter/material.dart';

class FeatureSavingGoalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('เป้าหมายการออม'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Text('หน้านี้สำหรับเป้าหมายการออม', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
