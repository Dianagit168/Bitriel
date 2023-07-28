import 'package:bitriel/widgets/app_bar/custom_appbar.dart';

import 'package:flutter/material.dart';

class Hello extends StatelessWidget {
  const Hello({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(
              tit: 'កូនប៉ាៗ',
              onNavigate: () {
                Navigator.pop(context);
              },
            ),
            Container(
              height: 100,
              width: 100,
              color: const Color.fromARGB(255, 242, 124, 60),
              child: const Center(child: Text('ហេឡូកូនប៉ាៗ')),
            ),
          ],
        ),
      ),
    );
  }
}
