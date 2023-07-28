import 'package:flutter/material.dart';

class ElevatedButtonCust extends StatelessWidget {
  const ElevatedButtonCust({
    Key? key,
    this.tit,
    this.sizfo,
    this.onNavigator,
  }) : super(key: key);
  final String? tit;
  final double? sizfo;
  final void Function()? onNavigator;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(360, 50),
        primary: const Color.fromARGB(255, 242, 124, 60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      onPressed: onNavigator,
      child: Text(
        tit!,
        style: TextStyle(fontSize: sizfo),
      ),
    );
  }
}
