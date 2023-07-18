import 'package:bitriel/widgets/bottom/switchandcreatewallet.dart';
import 'package:bitriel/widgets/bottom/switchnetwork.dart';
import 'package:flutter/material.dart';

class AppBarHome extends StatelessWidget {
  const AppBarHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        top: 8,
        right: 16,
      ),
      child: Container(
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(64),
          color: const Color.fromARGB(255, 232, 244, 250),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  height: 55,
                  width: 55,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: CircleAvatar(
                      child: Image.network(
                        'https://cdn.iconscout.com/icon/free/png-256/free-avatar-370-456322.png?f=webp',
                      ),
                    ),
                    onPressed: () {
                      showModalBottomSheet(
                          isScrollControlled: true,
                          shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(16)),
                          ),
                          context: context,
                          builder: (BuildContext context) {
                            return StatefulBuilder(
                              builder: (context, setState) {
                                return const SwitchAndCreate();
                              },
                            );
                          });
                    },
                  )),
              Container(
                margin: const EdgeInsets.only(left: 16),
                height: 40,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Image(
                        image: AssetImage('assets/images/Selendra-5 1.png'),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      const Text('Selendra Mainnet Network'),
                      IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                              isScrollControlled: true,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(16)),
                              ),
                              context: context,
                              builder: (BuildContext context) {
                                return StatefulBuilder(
                                  builder: (context, setState) {
                                    return const SwitchNetwork();
                                  },
                                );
                              });
                        },
                        icon: const Icon(
                          Icons.keyboard_arrow_down_outlined,
                          size: 17,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
                width: 50,
                child: CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 232, 244, 250),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Image.asset(
                      'assets/images/qr.png',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
