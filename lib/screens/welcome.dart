import 'package:bitriel/screens/create_pin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 241, 249),
      body: SafeArea(
        child: Center(
            child: Padding(
          padding: const EdgeInsets.only(bottom: 32, top: 64),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    child: const Image(
                      image: NetworkImage(
                        'https://www.bitriel.com/static/media/bitriel-logo.bf35b690f5b262d75ab9.png',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Column(
                    children: const [
                      Text('Welcome to',
                          style: TextStyle(
                            fontSize: 25,
                            color: Color.fromARGB(255, 13, 31, 60),
                          )),
                      Text('Bitriel',
                          style: TextStyle(
                            fontSize: 40,
                            color: Color.fromARGB(255, 13, 31, 60),
                          )),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 242, 124, 60),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                    child: const Text('Create Mnemonic'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CreatePin(),
                          ));
                    },
                  ),
                  CupertinoButton(
                    child: const Text(
                      'Import Mnemonic',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 242, 124, 60),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CreatePin(),
                          ));
                    },
                  ),
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}
