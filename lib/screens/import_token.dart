import 'package:bitriel/screens/swap.dart';
import 'package:bitriel/widgets/app_bar/custom_appbar.dart';
import 'package:bitriel/widgets/body/Import_token.dart';
import 'package:flutter/material.dart';

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
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 237, 241, 249),
        body: Column(
          children: [
            CustomAppBar(
              width: 90,
              tit: 'Import Token',
              onNavigate: () {
                switchScreen();
              },
            ),
            const BodyImportToken(),
          ],
        ),
      ),
    );
  }
}
