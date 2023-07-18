import 'package:flutter/material.dart';

import 'allwallet.dart';

class SwitchNetwork extends StatelessWidget {
  const SwitchNetwork({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: 275,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color.fromARGB(255, 255, 255, 255),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 24, top: 24, right: 8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Switch/Create Wallet'),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.cancel_outlined),
                ),
              ],
            ),
            AllWallet(
              userAcc: 'Selendra Mainet Network',
              subt: 'wss://rpc0.selendra.org',
              isImg: false,
              isSub: false,
              isTit: false,
            ),
            AllWallet(
              userAcc: 'Selendra Mainnet Network',
              subt: 'wss://rpc1.selendra.org',
              isImg: false,
              isSub: false,
              isTit: false,
            ),
          ],
        ),
      ),
    );
  }
}
