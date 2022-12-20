import 'package:flutter/material.dart';
import 'package:budget_app/presentation/helpers/brand_colors.dart'
    as brand_colors;
import 'package:budget_app/presentation/helpers/brand_fonts.dart'
    as brand_fonts;

import 'presentation/pages/transactions/transactions_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Budget App',
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: const MyHomePage(title: 'Budget App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  static const double horizontalPadding = 10;

  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: brand_colors.primaryColor,
        title: Text(
          widget.title,
          style: brand_fonts.titleDark,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.edit),
            label: 'Erfassen',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart),
            label: 'Analysieren',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Einstellungen',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: brand_colors.primaryColor,
        onTap: (newIndex) {
          setState(() {
            _selectedIndex = newIndex;
          });
        },
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: const TransactionsView(),
      ),
    );
  }
}
