import 'package:flutter/material.dart';
import 'package:resource_manager/views/market/widgets/market_input_button.dart';
import 'package:resource_manager/views/market/widgets/market_list_item.dart';
import 'package:resource_manager/views/widgets/main_app_bar.dart';
import '../../core/library/strings.dart' as strings;
import '../../core/utils/media_query.dart' as ui;

class MarketView extends StatefulWidget {
  const MarketView({Key? key}) : super(key: key);

  @override
  _MarketViewState createState() => _MarketViewState();
}

class _MarketViewState extends State<MarketView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(context, label: strings.marketViewTitle),
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          top: ui.getHeigth(context, height: 3),
        ),
        child: Column(
          children: [
            const MarketInputButton(),
            SizedBox(
              height: ui.getHeigth(context, height: 50),
              child: ListView(children: const [MarketListItem()]),
            )
          ],
        ),
      ),
    ));
  }
}
