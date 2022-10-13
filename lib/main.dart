import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottoapp/screens/BottomNavScreen.dart';
import 'package:lottoapp/utils/Constants.dart';
import 'package:provider/provider.dart';

import 'models/RoutingNav.dart';

void main() {
  runApp(LottoApp());
}

class LottoApp extends StatelessWidget {
  const LottoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<RoutingNav>(
            create: (_) => RoutingNav())
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: kAppTitle,
        home: BottomNavScreen()
      ),
    );
  }
}