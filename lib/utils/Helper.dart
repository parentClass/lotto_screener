import 'package:flutter/widgets.dart';
import 'package:lottoapp/models/RoutingNav.dart';
import 'package:provider/provider.dart';

class Helper {
  static void changeScreen(context, index) {
    Provider.of<RoutingNav>(context, listen: false).setPageIndex(index);
    Provider.of<RoutingNav>(context, listen: false)
        .pageController
        .animateToPage(index,
        duration: const Duration(milliseconds: 800), curve: Curves.easeIn);
  }
}