import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../../../core/utils/media_query.dart' as ui;
import '../../../core/theme/theme.dart' as theme;
import '../../../core/library/strings.dart' as strings;
import '../../../core/utils/ui_padding.dart';

class MarketListItem extends StatefulWidget {
  const MarketListItem({Key? key}) : super(key: key);

  @override
  State<MarketListItem> createState() => _MarketListItemState();
}

class _MarketListItemState extends State<MarketListItem> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      child: Container(
        height: ui.getHeigth(context, height: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: check ? theme.lightMainColor : theme.mainColor,
        ),
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 165,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  Text(
                    ('21/11/2022 - 09:30'),
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    ('Mercadoria'),
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Checkbox(
                value: check,
                onChanged: (value) {
                  if (check) {
                    setState(() {
                      check = false;
                    });
                  } else {
                    setState(() {
                      check = true;
                    });
                  }
                }),
          ],
        ),
      ),
      endActionPane: const ActionPane(
        motion: ScrollMotion(),
        children: [
          SlidableAction(
            // An action can be bigger than the others.
            flex: 1,
            onPressed: doNothing,
            backgroundColor: theme.deleteButtonColor,
            foregroundColor: theme.whiteColor,
            icon: Icons.delete,
            label: strings.deleteButton,
          ),
          SlidableAction(
            flex: 1,
            onPressed: doNothing,
            backgroundColor: theme.updateButtonColor,
            foregroundColor: theme.whiteColor,
            icon: Icons.update,
            label: strings.updateButton,
          ),
        ],
      ),
    ).verticalPadding(2, context);
  }
}

void doNothing(BuildContext context) {}
