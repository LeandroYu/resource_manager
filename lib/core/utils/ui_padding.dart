import 'package:flutter/material.dart';

import '../utils/media_query.dart' as ui;

extension SymetricPadding on Widget {
  symetricPadding(double vertical, double horizontal, BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: ui.getHeigth(context, height: vertical),
          horizontal: ui.getWidth(context, width: horizontal)),
      child: this,
    );
  }
}

extension VerticalPadding on Widget {
  verticalPadding(double vertical, BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: ui.getHeigth(context, height: vertical),
      ),
      child: this,
    );
  }
}

extension HorizontalPadding on Widget {
  horizontalPadding(double horizontal, BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: ui.getWidth(context, width: horizontal),
      ),
      child: this,
    );
  }
}
