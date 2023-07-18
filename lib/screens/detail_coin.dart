import 'package:bitriel/screens/home_screen.dart';
import 'package:bitriel/widgets/app_bar/detail_coin.dart';
import 'package:bitriel/widgets/body/detailcoin.dart';
import 'package:flutter/material.dart';

class AboutCion extends StatelessWidget {
  const AboutCion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 241, 249),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: const [
              AppBarD(),
              BodyD(),
            ],
          ),
        ),
      ),
    );
  }
}
