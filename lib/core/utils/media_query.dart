library media_query;

import 'package:flutter/material.dart';

double getHeigth(BuildContext context, {required double height}) =>
    MediaQuery.of(context).size.height * (height / 100);

double getWidth(BuildContext context, {required double width}) =>
    MediaQuery.of(context).size.width * (width / 100);
