import 'package:bitriel/screens/home_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/pin_number.dart';

class Swap extends StatefulWidget {
  const Swap({Key? key}) : super(key: key);

  @override
  State<Swap> createState() => _SwapState();
}

class _SwapState extends State<Swap> {
  // var cur = ['BTC', 'ETH', 'USDT', 'Other'];
  // var curentItem = 'BTC';

  var valCoins = [
    {'logo': 'assets/images/bitcoin-441959.png', 'name': 'BTC'},
    {'logo': 'assets/images/eth-diamond-black.png', 'name': 'ETH'},
    {'logo': 'assets/images/Tether-USDT-icon.png', 'name': 'USDt'}
  ];
  var curentItem = 'BTC';
  var curentItem2 = 'ETH';
  var temp;

  void switchCoin() {
    temp = curentItem;
    curentItem = curentItem2;
    curentItem2 = temp;
    // if (curentItem == curentItem2) {
    //   curentItem = '';
    //   curentItem2 = '';
    // }
  }

  void checkVal() {
    if (curentItem == curentItem2) {
      curentItem = 'Do not work';
      curentItem2 = 'Do not work';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 241, 249),
      body: SafeArea(
        child: SizedBox(
          height: 70,
          width: double.infinity,
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ));
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 15,
                ),
              ),
              const SizedBox(
                width: 135,
              ),
              const Text(
                'Swap',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 740,
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
              Row(
                children: [
                  Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                          right: 310,
                        ),
                        child: Text(
                          'You send',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(189, 13, 31, 60)),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 60,
                            width: 190,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(32),
                              ),
                              color: Color.fromARGB(255, 250, 250, 250),
                            ),
                            child: const TextField(
                              cursorColor: Colors.black,
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.none,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                            ), //
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          SizedBox(
                            height: 60,
                            width: 165,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: DropdownButton<String>(
                                isExpanded: true,
                                underline: const SizedBox(),
                                icon: const Icon(
                                    Icons.keyboard_arrow_down_outlined),
                                items: valCoins.map((Map itemC) {
                                  return DropdownMenuItem<String>(
                                    value: itemC['name'],
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          backgroundColor: Colors.white,
                                          child: Image(
                                            image: AssetImage(itemC['logo']),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 30,
                                        ),
                                        Text(itemC['name']),
                                      ],
                                    ),
                                  );
                                }).toList(),
                                onChanged: (newItemC) {
                                  setState(() {
                                    curentItem2 = newItemC!;
                                    // checkVal();
                                  });
                                },
                                value: curentItem2,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          right: 250,
                        ),
                        child: Text(
                          'Balance: 0000 BTC',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(227, 158, 158, 158),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 310),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      switchCoin();
                    });
                  },
                  icon: Image.asset('assets/images/Vector.png'),
                ),
              ),
              Row(
                children: [
                  Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                          right: 290,
                        ),
                        child: Text(
                          'You receive',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(189, 13, 31, 60)),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 60,
                            width: 190,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(32),
                              ),
                              color: Color.fromARGB(255, 250, 250, 250),
                            ),
                            child: const TextField(
                              cursorColor: Colors.black,
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.none,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                            ), //
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          SizedBox(
                            height: 60,
                            width: 165,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: DropdownButton<String>(
                                isExpanded: true,
                                underline: const SizedBox(),
                                icon: const Icon(
                                    Icons.keyboard_arrow_down_outlined),
                                items: valCoins.map((Map itemC) {
                                  return DropdownMenuItem<String>(
                                    value: itemC['name'],
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          backgroundColor: Colors.white,
                                          child: Image(
                                            image: AssetImage(itemC['logo']),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 30,
                                        ),
                                        Text(itemC['name']),
                                      ],
                                    ),
                                  );
                                }).toList(),
                                onChanged: (newItemC) {
                                  setState(() {
                                    curentItem = newItemC!;
                                  });
                                },
                                value: curentItem,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          right: 250,
                        ),
                        child: Text(
                          'Balance: 1111 ETH',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(227, 158, 158, 158),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
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
                  onPressed: () {},
                ),
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//Row(
              //   children: [
              //     Column(
              //       children: [
              //         const Padding(
              //           padding: EdgeInsets.only(
              //             right: 290,
              //           ),
              //           child: Text(
              //             'You receive',
              //             style: TextStyle(
              //                 fontSize: 17,
              //                 fontWeight: FontWeight.bold,
              //                 color: Color.fromARGB(189, 13, 31, 60)),
              //           ),
              //         ),
              //         const SizedBox(
              //           height: 10,
              //         ),
              //         Row(
              //           children: [
              //             Container(
              //               height: 60,
              //               width: 190,
              //               decoration: const BoxDecoration(
              //                 borderRadius: BorderRadius.all(
              //                   Radius.circular(32),
              //                 ),
              //                 color: Color.fromARGB(255, 250, 250, 250),
              //               ),
              //               child: const TextField(
              //                 textAlign: TextAlign.center,
              //                 keyboardType: TextInputType.none,
              //                 decoration: InputDecoration(
              //                   border: InputBorder.none,
              //                 ),
              //               ), //
              //             ),
              //             const SizedBox(
              //               width: 30,
              //             ),
              //             const SizedBox(
              //               height: 60,
              //               width: 165,
              //               child: ListTile(
              //                 leading: CircleAvatar(
              //                   backgroundColor: Colors.white,
              //                   child: Image(
              //                     image: AssetImage(
              //                         'assets/images/bitcoin-441959.png'),
              //                   ),
              //                 ),
              //                 title: Text('BTC'),
              //                 trailing:
              //                     Icon(Icons.keyboard_arrow_down_outlined),
              //               ),
              //             )
              //           ],
              //         ),
              //         const SizedBox(
              //           height: 10,
              //         ),
              //         const Padding(
              //           padding: EdgeInsets.only(
              //             right: 250,
              //           ),
              //           child: Text(
              //             'Balance: 1111 ETH',
              //             style: TextStyle(
              //               fontSize: 15,
              //               fontWeight: FontWeight.bold,
              //               color: Color.fromARGB(227, 158, 158, 158),
              //             ),
              //           ),
              //         ),
              //       ],
              //     ),
              //   ],
              // ),

  // ListTile(
  //                               leading: CircleAvatar(
  //                                 backgroundColor: Colors.white,
  //                                 child: Image(
  //                                   image: AssetImage(
  //                                       'assets/images/bitcoin-441959.png'),
  //                                 ),
  //                               ),
  //                               title: Text('BTC'),
  //                               trailing:
  //                                   Icon(Icons.keyboard_arrow_down_outlined),
  //                             ),
  // child: DropdownButton<DataCoins>(
  //                               items: listDataofCoins.map((DataCoins itemStr) {
  //                                 return DropdownMenuItem<DataCoins>(
  //                                   value: itemStr,
  //                                   child: Row(
  //                                     children: [
  //                                       Image(
  //                                         image: AssetImage('${itemStr.img}'),
  //                                       ),
  //                                       const SizedBox(
  //                                         width: 70,
  //                                       ),
  //                                       Text('${itemStr.subTit}'),
  //                                     ],
  //                                   ),
  //                                 );
  //                               }).toList(),
  //                               onChanged: (newItemStr) {
  //                                 setState(() {
  //                                 curentItem = newItemStr!.img.toString();
  //                                 });
  //                               },
  //                               value:,
  //                             ),