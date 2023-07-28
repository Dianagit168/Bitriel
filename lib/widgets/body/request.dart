import 'package:flutter/material.dart';

import '../../data/value_coin.dart';

class Request extends StatefulWidget {
  const Request({Key? key}) : super(key: key);

  @override
  State<Request> createState() => _RequestState();
}

class _RequestState extends State<Request> {
  var curentItem = 'BTC';
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(top: 40, left: 24, right: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 60,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(32),
                ),
                color: Color.fromARGB(255, 250, 250, 250),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 24, top: 5, right: 24),
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
            ),
            Container(
              height: 60,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(32),
                ),
                color: Color.fromARGB(255, 250, 250, 250),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 24, top: 4),
                child: TextField(
                  cursorColor: Colors.black,
                  style: TextStyle(
                    fontSize: 17,
                  ),
                  textAlign: TextAlign.start,
                  keyboardType: TextInputType.none,
                  decoration: InputDecoration(
                    hintText: 'Enter token contract address',
                    border: InputBorder.none,
                  ),
                ),
              ), //
            ),
            const Divider(
              height: 2,
              thickness: 1.5,
            ),
          ],
        ),
      ),
    );
  }
}
