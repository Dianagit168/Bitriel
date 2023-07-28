import 'package:bitriel/widgets/body/elevatedb_cust.dart';
import 'package:bitriel/widgets/body/request.dart';
import 'package:bitriel/widgets/body/result.dart';
import 'package:flutter/material.dart';

import '../../screens/hello.dart';

class BodyImportToken extends StatefulWidget {
  const BodyImportToken({Key? key}) : super(key: key);

  @override
  State<BodyImportToken> createState() => _BodyImportTokenState();
}

class _BodyImportTokenState extends State<BodyImportToken> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 722,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(24),
        ),
        color: Colors.white,
      ),
      child: Column(
        children: [
          const Request(),
          const Result(),
          const Spacer(),
          ElevatedButtonCust(
            tit: 'Search',
            sizfo: 20,
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
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
