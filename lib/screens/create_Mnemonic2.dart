// ignore_for_file: prefer_const_constructors

import 'package:bitriel/screens/verify_Mnemonic.dart';
import 'package:bitriel/widgets/button_word.dart';
import 'package:flutter/material.dart';

import 'create_Mnemonic.dart';

class CreateMnemonic2 extends StatefulWidget {
  const CreateMnemonic2({Key? key}) : super(key: key);

  @override
  State<CreateMnemonic2> createState() => _CreateMnemonicState();
}

class _CreateMnemonicState extends State<CreateMnemonic2> {
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
                            builder: (context) => CreateMnemonic(),
                          ),
                        );
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
                      'Create Mnemonic',
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
                  'Write down or copy these words in the order and save them somewhere safe.',
                  strutStyle: StrutStyle(height: 2),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  top: 8,
                  right: 100,
                ),
                child: Text(
                  'After writing and securing your 12 words, click continue to proceed.',
                  style: TextStyle(
                    color: Color.fromARGB(255, 61, 76, 99),
                  ),
                  strutStyle: StrutStyle(height: 2),
                ),
              ),
              SizedBox(
                height: 20,
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
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.restart_alt_rounded,
                    size: 35,
                    color: Color.fromARGB(255, 61, 76, 99),
                  ),
                  Text(
                    'New Mnemonic',
                    style: TextStyle(
                      fontSize: 17,
                      color: Color.fromARGB(255, 61, 76, 99),
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Icon(
                    Icons.copy_rounded,
                    size: 27,
                    color: Color.fromARGB(255, 61, 76, 99),
                  ),
                  Text(
                    'Copy',
                    style: TextStyle(
                      fontSize: 17,
                      color: Color.fromARGB(255, 61, 76, 99),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 170,
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
                  'Next',
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
