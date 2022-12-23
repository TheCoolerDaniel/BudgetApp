import 'package:flutter/material.dart';
import 'package:budget_app/presentation/helpers/brand_colors.dart'
    as brand_colors;
import 'package:budget_app/presentation/helpers/brand_fonts.dart'
    as brand_fonts;
import 'package:budget_app/presentation/helpers/constants.dart' as constants;

import '../core/custom_app_bar.dart';
import '../core/empty_view.dart';
import '../pages/analysis/analysis_view.dart';
import '../pages/transactions/transactions_view.dart';

class HomePage extends StatefulWidget {
  static const double horizontalPadding = 10;

  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 1;

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
          view: const TransactionsView(),
        );
      case 2:
        return _SelectableView(
          title: "Einstellungen",
          // TODO: Create settings view
          view: const TransactionsView(),
        );
      default:
        // Should never occur.
        return _SelectableView(
          title: "Transaktionen",
          view: const TransactionsView(),
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
        child: _selectedIndex == 1
            ? selectedView.view
            : EmptyView(
                title: "Coming Soon",
                description: "Diese Ansicht ist noch in Bearbeitung. :)",
              ),
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
