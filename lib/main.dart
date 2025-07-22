import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'screens/dashboard_screen.dart';
import 'screens/feature_income_expense.dart';
import 'screens/feature_saving_goal.dart';
import 'screens/feature_finance_knowledge.dart';
import 'screens/feature_loan_source.dart';
import 'screens/feature_family_group.dart';
import 'screens/profile_screen.dart';
import 'screens/settings_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/dashboard': (context) => DashboardScreen(),
        '/income-expense': (context) => FeatureIncomeExpenseScreen(),
        '/saving-goal': (context) => FeatureSavingGoalScreen(),
        '/finance-knowledge': (context) => FeatureFinanceKnowledgeScreen(),
        '/loan-source': (context) => FeatureLoanSourceScreen(),
        '/family-group': (context) => FeatureFamilyGroupScreen(),
        '/profile': (context) => ProfileScreen(),
        '/settings': (context) => SettingsScreen(),
      },
    );
  }
}