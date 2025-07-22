import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sarnsab/main.dart';
import 'package:sarnsab/screens/register_screen.dart';
import 'package:sarnsab/screens/dashboard_screen.dart';
import 'package:sarnsab/screens/feature_income_expense.dart';
import 'package:sarnsab/screens/feature_saving_goal.dart';
import 'package:sarnsab/screens/feature_finance_knowledge.dart';
import 'package:sarnsab/screens/feature_loan_source.dart';
import 'package:sarnsab/screens/feature_family_group.dart';
import 'package:sarnsab/screens/profile_screen.dart';
import 'package:sarnsab/screens/settings_screen.dart';

void main() {
  testWidgets('แอพโหลดหน้า Login', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Login'), findsOneWidget);
    expect(find.byType(ElevatedButton), findsWidgets);
  });

  testWidgets('แอพโหลดหน้า Register', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: RegisterScreen()));
    expect(find.text('Register'), findsOneWidget);
    expect(find.byType(ElevatedButton), findsWidgets);
  });

  testWidgets('แอพโหลดหน้า Dashboard', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: DashboardScreen()));
    expect(find.text('สานทรัพย์'), findsOneWidget);
    expect(find.byType(GridView), findsOneWidget);
  });

  testWidgets('แอพโหลดหน้า รายรับ–รายจ่าย', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: FeatureIncomeExpenseScreen()));
    expect(find.text('บันทึกรายรับ–รายจ่าย'), findsOneWidget);
  });

  testWidgets('แอพโหลดหน้า เป้าหมายการออม', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: FeatureSavingGoalScreen()));
    expect(find.text('เป้าหมายการออม'), findsOneWidget);
  });

  testWidgets('แอพโหลดหน้า ความรู้การเงิน', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: FeatureFinanceKnowledgeScreen()));
    expect(find.text('ความรู้การเงิน'), findsOneWidget);
  });

  testWidgets('แอพโหลดหน้า แหล่งเงินกู้/ทุน', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: FeatureLoanSourceScreen()));
    expect(find.text('แหล่งเงินกู้/ทุน'), findsOneWidget);
  });

  testWidgets('แอพโหลดหน้า ครอบครัว/กลุ่ม', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: FeatureFamilyGroupScreen()));
    expect(find.text('ครอบครัว/กลุ่ม'), findsOneWidget);
  });

  testWidgets('แอพโหลดหน้า โปรไฟล์', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: ProfileScreen()));
    expect(find.text('โปรไฟล์'), findsOneWidget);
  });

  testWidgets('แอพโหลดหน้า การตั้งค่า', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: SettingsScreen()));
    expect(find.text('การตั้งค่า'), findsOneWidget);
  });
}