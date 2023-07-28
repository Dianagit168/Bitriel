import 'package:bitriel/widgets/body/swap.dart';
import 'package:flutter/material.dart';

import '../widgets/app_bar/swap_screen.dart';

class Swap extends StatefulWidget {
  const Swap({Key? key}) : super(key: key);

  @override
  State<Swap> createState() => _SwapState();
}

class _SwapState extends State<Swap> {
  // var cur = ['BTC', 'ETH', 'USDT', 'Other'];
  // var curentItem = 'BTC';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 241, 249),
      body: SafeArea(
        child: Column(
          children: const [
            AppBarSwap(),
            BodySwap(),
          ],
        ),
      ),
    );
  }
}
