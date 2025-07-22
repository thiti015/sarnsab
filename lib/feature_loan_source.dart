import 'package:flutter/material.dart';

class FeatureLoanSourceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('แหล่งเงินกู้/ทุน'),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Text('หน้านี้สำหรับแหล่งเงินกู้/ทุน', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
