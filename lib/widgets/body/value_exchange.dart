import 'package:flutter/material.dart';

import '../../data/value_coin.dart';

class ValueExchange extends StatefulWidget {
  const ValueExchange({Key? key}) : super(key: key);

  @override
  State<ValueExchange> createState() => _ValueExchangeState();
}

class _ValueExchangeState extends State<ValueExchange> {
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
    return Column(
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
                      child: const Padding(
                        padding: EdgeInsets.only(left: 24),
                        child: TextField(
                          cursorColor: Colors.black,
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start,
                          keyboardType: TextInputType.none,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
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
                          icon: const Icon(Icons.keyboard_arrow_down_outlined),
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
                      child: const Padding(
                        padding: EdgeInsets.only(left: 24),
                        child: TextField(
                          cursorColor: Colors.black,
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start,
                          keyboardType: TextInputType.none,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
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
                          icon: const Icon(Icons.keyboard_arrow_down_outlined),
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
      ],
    );
  }
}
