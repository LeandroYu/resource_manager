import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resource_manager/views/widgets/main_app_bar.dart';
import '../../core/library/strings.dart' as strings;
import '../../core/utils/ui_padding.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(context, label: strings.homeViewTitle, hasIcon: true),
      body: const SafeArea(
        child: SingleChildScrollView(),
      ),
    );
  }
}
