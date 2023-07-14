// ignore_for_file: prefer_const_constructors

import 'package:bitriel/screens/create_Mnemonic2.dart';
import 'package:bitriel/widgets/button_word.dart';
import 'package:flutter/material.dart';

import 'confirm_pin.dart';

class CreateMnemonic extends StatefulWidget {
  const CreateMnemonic({Key? key}) : super(key: key);

  @override
  State<CreateMnemonic> createState() => _CreateMnemonicState();
}

class _CreateMnemonicState extends State<CreateMnemonic> {
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
                            builder: (context) => const ConfirmPin(),
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
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 300,
        width: 275,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Plese read, carefully",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 16,
                ),
                child: Container(
                  height: 60,
                  width: 360,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color.fromARGB(76, 255, 114, 114),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 8,
                    ),
                    child: ListTile(
                      leading: Image(
                        height: 35,
                        width: 35,
                        image: NetworkImage(
                          'https://static.vecteezy.com/system/resources/thumbnails/012/042/301/small/warning-sign-icon-transparent-background-free-png.png',
                        ),
                      ),
                      title: Text(
                        'The information below is important to guarantee your account security',
                        strutStyle: StrutStyle(height: 1.5),
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 114, 114),
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18, right: 10),
                child: Text(
                  strutStyle: StrutStyle(height: 1.5),
                  'Please write down your wallet’s mnemonic seed and keep it in a safe place. The mnemonic can be used to restore your wallet. If you lose it, all your assets that link to it will be lost.',
                ),
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
                  'I Agree',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CreateMnemonic2(),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
