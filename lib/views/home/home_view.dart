import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:resource_manager/views/widgets/main_app_bar.dart';
import '../../core/library/strings.dart' as strings;

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(
        context,
        label: "${strings.homeViewTitle} ${FirebaseAuth.instance.currentUser?.displayName ?? ""}!",
        hasIcon: true,
      ),
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [],
      ),
    );
  }
}
