import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF6A5AE0), Color(0xFFB983FF), Color(0xFFFCF6BA)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('สานทรัพย์', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.deepPurple)),
                        SizedBox(height: 4),
                        Text('ฟีเจอร์หลักของแอป', style: TextStyle(fontSize: 16, color: Colors.black54)),
                      ],
                    ),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(32),
                        onTap: () {
                          Navigator.pushNamed(context, '/profile');
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.deepPurple.withOpacity(0.3),
                                blurRadius: 16,
                                offset: Offset(0, 8),
                              ),
                            ],
                          ),
                          child: CircleAvatar(
                            radius: 28,
                            backgroundColor: Colors.white,
                            child: Icon(Icons.person, size: 32, color: Colors.deepPurple),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  children: [
                    _featureCard(
                      context,
                      icon: Icons.attach_money,
                      color: Colors.green,
                      title: 'บันทึกรายรับ–รายจ่าย',
                      description: 'เพิ่ม/ดูสรุปการใช้เงิน เข้าใจง่าย',
                      emoji: '📥',
                    ),
                    _featureCard(
                      context,
                      icon: Icons.flag,
                      color: Colors.orange,
                      title: 'เป้าหมายการออม',
                      description: 'ตั้งเป้าหมายออมและดูความคืบหน้า',
                      emoji: '🎯',
                    ),
                    _featureCard(
                      context,
                      icon: Icons.school,
                      color: Colors.blue,
                      title: 'ความรู้การเงิน',
                      description: 'บทเรียน/คลิปสั้นๆ เข้าใจง่าย',
                      emoji: '📚',
                    ),
                    _featureCard(
                      context,
                      icon: Icons.security,
                      color: Colors.purple,
                      title: 'แหล่งเงินกู้/ทุน',
                      description: 'ค้นหาแหล่งเงินกู้ปลอดภัย',
                      emoji: '🤝',
                    ),
                    _featureCard(
                      context,
                      icon: Icons.group,
                      color: Colors.pink,
                      title: 'ครอบครัว/กลุ่ม',
                      description: 'แชร์ข้อมูลและเป้าหมายร่วมกัน',
                      emoji: '👪',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24, bottom: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(16),
                        onTap: () {
                          Navigator.pushNamed(context, '/settings');
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 18),
                          decoration: BoxDecoration(
                            color: Colors.deepPurple.withOpacity(0.12),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.settings, color: Colors.deepPurple, size: 24),
                              SizedBox(width: 8),
                              Text('การตั้งค่า', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 12),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 18),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                        backgroundColor: Colors.deepPurple,
                        elevation: 6,
                      ),
                      icon: Icon(Icons.logout, size: 20, color: Colors.white),
                      label: Text('Logout', style: TextStyle(fontSize: 16, color: Colors.white)),
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/');
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }

  Widget _featureCard(BuildContext context, {required IconData icon, required Color color, required String title, required String description, required String emoji}) {
    String? route;
    if (title == 'บันทึกรายรับ–รายจ่าย') route = '/income-expense';
    else if (title == 'เป้าหมายการออม') route = '/saving-goal';
    else if (title == 'ความรู้การเงิน') route = '/finance-knowledge';
    else if (title == 'แหล่งเงินกู้/ทุน') route = '/loan-source';
    else if (title == 'ครอบครัว/กลุ่ม') route = '/family-group';
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(24),
        onTap: route != null ? () => Navigator.pushNamed(context, route!) : null,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.85),
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: color.withOpacity(0.15),
                blurRadius: 12,
                offset: Offset(0, 6),
              ),
            ],
          ),
          padding: EdgeInsets.all(18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(emoji, style: TextStyle(fontSize: 28)),
                  SizedBox(width: 8),
                  Icon(icon, color: color, size: 28),
                ],
              ),
              SizedBox(height: 12),
              Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: color)),
              SizedBox(height: 6),
              Text(description, style: TextStyle(fontSize: 14, color: Colors.black87)),
            ],
          ),
        ),
      ),
    );
  }
}