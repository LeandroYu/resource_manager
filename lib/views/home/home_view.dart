import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resource_manager/views/home/widgets/bottom_navigation_button.dart';
import 'package:resource_manager/views/market/market_view.dart';

import '../../core/library/strings.dart' as strings;
import '../../core/utils/media_query.dart' as ui;

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomeView> {
  int _currentIndex = 0;
  List<Widget> pages = const [HomeView(), HomeView(), MarketView(), HomeView()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNavigationBar(context),
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: const [],
      ),
    ));
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return NavigationBarTheme(
      data: NavigationBarThemeData(
        indicatorColor: Colors.white.withOpacity(0.5),
      ),
      child: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        backgroundColor: const Color.fromARGB(255, 65, 139, 139),
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
