import 'package:bitriel/screens/swap.dart';

import 'package:bitriel/widgets/body/Import_token.dart';
import 'package:flutter/material.dart';

import '../widgets/app_bar/custom_appbar.dart';

class ImportToken extends StatefulWidget {
  const ImportToken({Key? key}) : super(key: key);

  @override
  State<ImportToken> createState() => _ImportTokenState();
}

class _ImportTokenState extends State<ImportToken> {
  void switchScreen() {
    setState(() {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Swap(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color.fromARGB(255, 237, 241, 249),
      appBar: appBar(context, 'Import Token'),
      body: Container(
          color: const Color.fromARGB(255, 237, 241, 249),
          child: const BodyImportToken()),
    );
  }
}
