import 'package:flutter/material.dart';
import 'package:resource_manager/core/utils/ui_padding.dart';
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
                height: ui.getHeigth(context, height: 60),
                child: ListView(children: const [MarketListItem()]),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Valor Total: R\$ 0.00',
                    style: TextStyle(
                        fontSize: ui.getHeigth(context, height: 2.5),
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 65, 139, 139),
                      padding: const EdgeInsets.all(14),
                    ),
                    child: Text(
                      'Encerrar',
                      style: TextStyle(
                        fontSize: ui.getHeigth(context, height: 2),
                      ),
                    ),
                  ),
                ],
              ).horizontalPadding(2, context)
            ],
          ),
        ),
      ),
    );
  }
}
