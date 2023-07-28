import 'package:bitriel/screens/import_token.dart';
import 'package:bitriel/widgets/body/value_exchange.dart';
import 'package:flutter/material.dart';

import '../pin_number.dart';

class BodySwap extends StatefulWidget {
  const BodySwap({Key? key}) : super(key: key);

  @override
  State<BodySwap> createState() => _BodySwapState();
}

class _BodySwapState extends State<BodySwap> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 722,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(24),
        ),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 24,
          top: 32,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const ValueExchange(),
            const SizedBox(
              height: 15,
            ),
            PinNumber(
              txt1: '1',
              tx2: '2',
              tx3: '3',
            ),
            PinNumber(
              txt1: '4',
              tx2: '5',
              tx3: '6',
            ),
            PinNumber(
              txt1: '7',
              tx2: '8',
              tx3: '9',
            ),
            PinNumber(
              txt1: '.',
              tx2: '0',
              tx3: Icons.backspace_outlined,
              isIcon: true,
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 23,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(360, 50),
                  primary: const Color.fromARGB(255, 242, 124, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: const Text(
                  'Review Swap',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ImportToken(),
                      ));
                },
              ),
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
