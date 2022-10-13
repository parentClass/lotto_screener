import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:line_icons/line_icons.dart';
import 'package:lottoapp/models/RoutingNav.dart';
import 'package:lottoapp/services/RoutingService.dart';
import 'package:lottoapp/utils/Constants.dart';
import 'package:lottoapp/utils/Helper.dart';
import 'package:provider/provider.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({Key? key}) : super(key: key);

  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  /// Iterator for the tabs
  late PageController _pageController;

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(kAppTitle),
        backgroundColor: Colors.red
      ),
      body: PageView(
          controller: Provider.of<RoutingNav>(context).pageController,
          children: RoutingService(context: context).bottomRouteList,
          physics: const NeverScrollableScrollPhysics()),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5,
          ),
        ]),
        child: BottomNavigationBar(
            selectedFontSize: 12.0,
            unselectedFontSize: 12.0,
            backgroundColor: Colors.black,
            unselectedItemColor: Colors.white,
            selectedItemColor: Colors.lightBlue[200],
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(LineIcons.warehouse),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(LineIcons.warehouse),
                label: "Entries",
              )
            ],
            currentIndex: Provider.of<RoutingNav>(context).pageIndex,
            onTap: (index) => Helper.changeScreen(context, index)),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
