import 'package:bitriel/widgets/bottom/allwallet.dart';
import 'package:flutter/material.dart';

class SwitchAndCreate extends StatelessWidget {
  const SwitchAndCreate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 370,
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
                const Text(
                  'Switch/Create Wallet',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.cancel_outlined),
                ),
              ],
            ),
            AllWallet(
              userAcc: 'Sam Allen',
              subt: 'how About now',
              isImg: true,
              isSub: true,
              isTit: true,
            ),
            AllWallet(
              userAcc: 'Sokunsamnang',
              subt: 'what you gonna say',
              isImg: true,
              isSub: true,
              isTit: true,
            ),
            AllWallet(
              userAcc: 'Allen',
              subt: 'i hate the LV set',
              isImg: true,
              isSub: true,
              isTit: true,
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(300, 50),
                primary: const Color.fromARGB(255, 242, 124, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              child: const Text(
                'Create Wallet',
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
