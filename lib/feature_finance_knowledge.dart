import 'package:flutter/material.dart';

class FeatureFinanceKnowledgeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ความรู้การเงิน'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text('หน้านี้สำหรับความรู้การเงิน', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
