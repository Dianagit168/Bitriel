import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, this.tit, required this.onNavigate, this.width})
      : super(key: key);
  final String? tit;
  final void Function() onNavigate;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: double.infinity,
      child: Row(
        children: [
          IconButton(
            onPressed: onNavigate,
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 15,
            ),
          ),
          SizedBox(
            width: width,
          ),
          Text(
            tit!,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
