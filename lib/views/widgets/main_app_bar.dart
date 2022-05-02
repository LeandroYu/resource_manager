import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../core/utils/ui_padding.dart';

AppBar mainAppBar(BuildContext context,
    {required String label,
    bool hasIcon = false,
    IconData icon = FontAwesomeIcons.house}) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    title: Row(
      children: [
        hasIcon
            ? Icon(
                icon,
                color: Colors.black,
              ).horizontalPadding(4, context)
            : const SizedBox.shrink(),
        Text(
          label,
          style:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}
