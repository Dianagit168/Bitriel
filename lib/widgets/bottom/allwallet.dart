import 'package:flutter/material.dart';

class AllWallet extends StatelessWidget {
  AllWallet({
    Key? key,
    required this.userAcc,
    this.isImg = true,
    this.isSub = true,
    this.isTit = true,
    this.subt,
  }) : super(key: key);
  final String? userAcc;
  final String? subt;
  bool isImg, isSub, isTit;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: isImg
          ? Image.asset('assets/images/Frame 126.png')
          : Image.asset('assets/images/Selendra-5 1.png'),
      title: isTit
          ? Text(
              userAcc!,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            )
          : Text(
              userAcc!,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
      subtitle: isSub ? Text(subt!) : Text(subt!),
    );
  }
}
