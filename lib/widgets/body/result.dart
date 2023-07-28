import 'package:bitriel/screens/hello.dart';
import 'package:flutter/material.dart';

import 'elevatedb_cust.dart';

class Result extends StatefulWidget {
  const Result({Key? key}) : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 24, right: 24),
      child: Container(
          height: 60,
          width: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(32),
            ),
            color: Color.fromARGB(255, 237, 241, 248),
          ),
          child: ListTile(
            minVerticalPadding: 15.5,
            dense: true,
            leading: const CircleAvatar(
              child: Image(
                image: AssetImage('assets/images/USDC.png'),
              ),
            ),
            title: const Text('USDC'),
            subtitle: const Text('USDC'),
            trailing: SizedBox(
              width: 80,
              height: 35,
              child: ElevatedButtonCust(
                tit: 'Import',
                sizfo: 15,
                onNavigator: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Hello(),
                        ));
                  });
                },
              ),
            ),
          )),
    );
  }
}
