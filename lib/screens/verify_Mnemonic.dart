// ignore_for_file: prefer_const_constructors

import 'package:bitriel/screens/verify_again.dart';
import 'package:bitriel/widgets/button_word.dart';
import 'package:bitriel/widgets/verify_words.dart';
import 'package:flutter/material.dart';

import 'create_Mnemonic2.dart';

class VerifyMnemonic extends StatefulWidget {
  const VerifyMnemonic({Key? key}) : super(key: key);

  @override
  State<VerifyMnemonic> createState() => _CreateMnemonicState();
}

class _CreateMnemonicState extends State<VerifyMnemonic> {
  @override
  Widget build(BuildContext context) {
    bool? isValue = false;
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
                            builder: (context) => CreateMnemonic2(),
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
                      ' Verify Mnemonic',
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
                height: 5,
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
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 110),
                        child: ButtonWords(
                          ttl1: Text('1. down'),
                          ttl2: Text('2. write'),
                          ttl3: null,
                        ),
                      ),
                      ButtonWords(
                        ttl1: Text('4. order'),
                        ttl2: Text('5. safe'),
                        ttl3: Text('6. create'),
                      ),
                      ButtonWords(
                        ttl1: Text('7. code'),
                        ttl2: null,
                        ttl3: Text('9. word'),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 110),
                        child: ButtonWords(
                          ttl1: null,
                          ttl2: Text('11. save'),
                          ttl3: Text('12. paste'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              VerifyWords(
                ttl1: '10. verify',
                ttl2: '8. them',
                ttl3: '3. copy',
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
                  'Verrfy Later',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(16)),
                    ),
                    context: context,
                    builder: (context) {
                      return StatefulBuilder(builder: (context, mySetState) {
                        return Container(
                          height: 350,
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
                                  "Verify your Mnemonic later?",
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
                                            color: Color.fromARGB(
                                                255, 255, 114, 114),
                                            fontSize: 13,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                ListTile(
                                  leading: Checkbox(
                                    value: isValue,
                                    activeColor:
                                        Color.fromARGB(255, 242, 124, 60),
                                    onChanged: (newValue) {
                                      mySetState(() {
                                        isValue = newValue;
                                        debugPrint(isValue.toString());
                                      });
                                    },
                                  ),
                                  title: Text(
                                    strutStyle: StrutStyle(height: 1.5),
                                    'I understand that if I lose my Secret Mnemonic I will not be able to access my wallet',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => VerifyAgain(),
                                        ));
                                  },
                                  child: isValue!
                                      ? Text(
                                          'Yes, Verify Later',
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 242, 124, 60),
                                            fontSize: 19,
                                          ),
                                        )
                                      : Text(
                                          'Yes, Verify Later',
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 207, 210, 216),
                                            fontSize: 19,
                                          ),
                                        ),
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    minimumSize: const Size(300, 50),
                                    primary:
                                        const Color.fromARGB(255, 242, 124, 60),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ),
                                  child: const Text(
                                    'No, Verify Now',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  onPressed: () {},
                                  // onPressed: () => Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //       builder: (context) => CreateMnemonic2(),
                                  //     )),
                                ),
                              ],
                            ),
                          ),
                        );
                      });
                    },
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(300, 50),
                  primary: Color.fromARGB(255, 207, 210, 216),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: const Text(
                  'Verify',
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 181, 187, 201)),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
