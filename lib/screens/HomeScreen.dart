import 'package:flutter/widgets.dart';
import 'package:lottoapp/services/LottoService.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  // Screen id
  static const String id = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text("asdasdasd"),
    );
  }

  @override
  void initState() {
    super.initState();

    LottoService.extractLottoData();
  }
}
