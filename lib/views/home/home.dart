import 'package:flutter/material.dart';

import '../../core/library/strings.dart' as strings;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(context),
    );
  }
}

Widget _body(BuildContext context) {
  return SafeArea(
      child: SingleChildScrollView(
    child: Column(
      children: [],
    ),
  ));
}
