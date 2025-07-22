import 'package:flutter/material.dart';

class FeatureIncomeExpenseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('บันทึกรายรับ–รายจ่าย'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text('หน้านี้สำหรับบันทึกรายรับ–รายจ่าย', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
