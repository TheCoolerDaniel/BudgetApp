import 'package:budget_app/presentation/core/custom_app_bar.dart';
import 'package:budget_app/presentation/pages/analysis/analysis_view.dart';
import 'package:flutter/material.dart';
import 'package:budget_app/presentation/helpers/brand_colors.dart'
    as brand_colors;
import 'package:budget_app/presentation/helpers/brand_fonts.dart'
    as brand_fonts;

import 'presentation/pages/transactions/transactions_list_view.dart';

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

  _SelectableView getView(int selectedIndex) {
    switch (selectedIndex) {
      case 0:
        return _SelectableView(
          title: "Analyse",
          view: AnalysisView(),
        );
      case 1:
        return _SelectableView(
          title: "Transaktionen",
          view: TransactionsListView(),
        );
      default:
        // Should never occur.
        return _SelectableView(
          title: "Transaktionen",
          view: TransactionsListView(),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    _SelectableView selectedView = getView(_selectedIndex);

    return Scaffold(
      appBar: CustomAppBar(
        title: selectedView.title,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.edit),
            label: 'Analyse',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart),
            label: 'Erfassen',
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
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: selectedView.view,
      ),
    );
  }
}

class _SelectableView {
  final String title;
  final Widget view;

  _SelectableView({
    required this.title,
    required this.view,
  });
}
