// ignore_for_file: prefer_const_constructors

import 'package:bitriel/screens/confirm_pin.dart';
import 'package:bitriel/screens/verify_Mnemonic.dart';

import 'package:flutter/material.dart';

class ImportMnemonic extends StatefulWidget {
  const ImportMnemonic({Key? key}) : super(key: key);

  @override
  State<ImportMnemonic> createState() => _CreateMnemonicState();
}

class _CreateMnemonicState extends State<ImportMnemonic> {
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
                              builder: (context) => ConfirmPin(),
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
                      'Import Mnemonic',
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
                  'Please add your 12 words seed below to restore your wallet.',
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
                    padding: const EdgeInsets.all(16),
                    child: TextFormField(
                      decoration:
                          InputDecoration(label: Text('Add your 12 keywords')),
                    ), //
                  )),
              SizedBox(
                height: 300,
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
                  'Confirm',
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
