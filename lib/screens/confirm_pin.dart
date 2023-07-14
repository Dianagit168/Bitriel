import 'package:bitriel/screens/create_pin.dart';

import 'package:flutter/material.dart';

import '../widgets/pin_number.dart';

class ConfirmPin extends StatelessWidget {
  const ConfirmPin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 241, 249),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 70,
              width: double.infinity,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CreatePin(),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 15,
                    ),
                  ),
                  const SizedBox(
                    width: 90,
                  ),
                  const Text(
                    'Confirm PIN',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 45,
              ),
              child: Text(
                'Repeate a PIN code to continue',
                textAlign: TextAlign.center,
                strutStyle: StrutStyle(height: 2),
              ),
            ),
            const SizedBox(
              height: 200,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 18,
                      width: 18,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 242, 124, 60),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 18,
                      width: 18,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 242, 124, 60),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 18,
                      width: 18,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 242, 124, 60),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 18,
                      width: 18,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 242, 124, 60),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 200,
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
          ],
        ),
      )),
    );
  }
}
