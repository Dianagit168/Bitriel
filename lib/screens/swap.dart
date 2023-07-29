import 'package:bitriel/widgets/app_bar/custom_appbar.dart';
import 'package:bitriel/widgets/body/swap.dart';
import 'package:flutter/material.dart';

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
      appBar: appBar(context, 'Swap'),
      body: Container(
          color: const Color.fromARGB(255, 237, 241, 249),
          child: const BodySwap()),
    );
  }
}
