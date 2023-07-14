// ignore_for_file: prefer_const_constructors

import 'package:bitriel/screens/create_Mnemonic2.dart';
import 'package:bitriel/screens/verify_Mnemonic.dart';
import 'package:bitriel/widgets/button_word.dart';
import 'package:flutter/material.dart';

import 'confirm_pin.dart';

class VerifyAgain extends StatefulWidget {
  const VerifyAgain({Key? key}) : super(key: key);

  @override
  State<VerifyAgain> createState() => _CreateMnemonicState();
}

class _CreateMnemonicState extends State<VerifyAgain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 237, 241, 249),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 70,
                width: double.infinity,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => VerifyMnemonic(),
                            ));
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        size: 15,
                      ),
                    ),
                    const SizedBox(
                      width: 70,
                    ),
                    const Text(
                      'Verify Mnemonic',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  top: 8,
                  right: 16,
                ),
                child: Text(
                  style: TextStyle(
                    color: Color.fromARGB(255, 61, 76, 99),
                  ),
                  'Almost done. Please input the words in the numerical order.',
                  strutStyle: StrutStyle(height: 2),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 220,
                width: 360,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      ButtonWords(
                        ttl1: Text('1. down'),
                        ttl2: Text('2. write'),
                        ttl3: Text('3. copy'),
                      ),
                      ButtonWords(
                        ttl1: Text('4. order'),
                        ttl2: Text('5. safe'),
                        ttl3: Text('6. create'),
                      ),
                      ButtonWords(
                        ttl1: Text('7. code'),
                        ttl2: Text('8. them'),
                        ttl3: Text('9. word'),
                      ),
                      ButtonWords(
                        ttl1: Text('10. verify'),
                        ttl2: Text('11. save'),
                        ttl3: Text('12. paste'),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VerifyMnemonic(),
                        )),
                    icon: Icon(
                      Icons.restart_alt_rounded,
                      size: 35,
                      color: Color.fromARGB(255, 61, 76, 99),
                    ),
                  ),
                  Text(
                    'Try Again',
                    style: TextStyle(
                      fontSize: 17,
                      color: Color.fromARGB(255, 61, 76, 99),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 230,
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
                  'Verify',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VerifyMnemonic(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
