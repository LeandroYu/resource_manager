import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resource_manager/views/home/home_view.dart';
import 'package:resource_manager/views/home/widgets/bottom_navigation_button.dart';
import 'package:resource_manager/views/market/market_view.dart';

import '../../core/library/strings.dart' as strings;
import '../../core/utils/media_query.dart' as ui;
import '../../core/theme/theme.dart' as theme;

class NavigatorView extends StatefulWidget {
  const NavigatorView({Key? key}) : super(key: key);

  @override
  _NavigatorHomeState createState() => _NavigatorHomeState();
}

class _NavigatorHomeState extends State<NavigatorView> {
  int _currentIndex = 0;
  List<Widget> pages = const [HomeView(), HomeView(), MarketView(), HomeView()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNavigationBar(context),
      body: pages[_currentIndex],
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return NavigationBarTheme(
      data: NavigationBarThemeData(
        indicatorColor: theme.whiteColor.withOpacity(0.5),
      ),
      child: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        backgroundColor: theme.mainColor,
        animationDuration: const Duration(milliseconds: 500),
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        height: ui.getHeigth(context, height: 10),
        destinations: const [
          BottomNavigationButton(
            icon: FontAwesomeIcons.house,
            label: strings.bottomNavigatorHome,
          ),
          BottomNavigationButton(
            icon: FontAwesomeIcons.wallet,
            label: strings.bottomNavigatorWallet,
          ),
          BottomNavigationButton(
            icon: FontAwesomeIcons.cartShopping,
            label: strings.bottomNavigatorShopping,
          ),
          BottomNavigationButton(
            icon: FontAwesomeIcons.gears,
            label: strings.bottomNavigatorConfig,
          ),
        ],
      ),
    );
  }
}
