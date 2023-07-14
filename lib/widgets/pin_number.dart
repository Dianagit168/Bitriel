import 'package:bitriel/screens/confirm_pin.dart';
import 'package:bitriel/screens/create_Mnemonic.dart';
import 'package:bitriel/screens/import_Mnemonic.dart';
import 'package:flutter/material.dart';

class PinNumber extends StatelessWidget {
  PinNumber(
      {Key? key,
      required this.txt1,
      required this.tx2,
      required this.tx3,
      this.isIcon = false})
      : super(key: key);
  final String? txt1;
  final String? tx2;
  dynamic tx3;
  final bool isIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
          icon: Text(
            txt1!,
            style: const TextStyle(
              fontSize: 25,
              color: Color.fromARGB(158, 0, 11, 210),
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CreateMnemonic(),
              ),
            );
          },
          icon: Text(
            tx2!,
            style: const TextStyle(
              fontSize: 25,
              color: Color.fromARGB(158, 0, 11, 210),
            ),
          ),
        ),
        IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ImportMnemonic(),
                ),
              );
            },
            icon: isIcon
                ? Icon(
                    tx3,
                    color: const Color.fromARGB(158, 0, 11, 210),
                  )
                : Text(
                    tx3,
                    style: const TextStyle(
                      fontSize: 25,
                      color: Color.fromARGB(158, 0, 11, 210),
                    ),
                  )),
      ],
    );
  }
}
