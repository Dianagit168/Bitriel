import 'package:bitriel/widgets/body/card_widget.dart';
import 'package:bitriel/widgets/body/top-coins.dart';
import 'package:bitriel/widgets/body/type_bitriel.dart';
import 'package:flutter/material.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 370,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(255, 232, 244, 250),
          ),
          child: Column(
            children: [
              GridView(
                shrinkWrap: true,
                padding: const EdgeInsets.only(
                  left: 18,
                  right: 18,
                  top: 8,
                  bottom: 8,
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, //មួយជួរយក២

                  childAspectRatio: 1.5,
                  crossAxisSpacing: 10, //គម្គម្លាតឆ្វេងស្តាំ
                  mainAxisSpacing: 2, //គម្លាតលើក្រោម
                ),
                children: const [
                  CardWidget(
                    tit: 'Swap',
                    img: 'assets/images/Exchange.png',
                    clr: Color.fromARGB(255, 203, 229, 235),
                  ),
                  CardWidget(
                    tit: 'Staking',
                    img: 'assets/images/Cryptocurrency.png',
                    clr: Color.fromARGB(255, 249, 242, 230),
                  ),
                  CardWidget(
                    tit: 'Buy',
                    img: 'assets/images/Wallet.png',
                    clr: Color.fromARGB(255, 235, 213, 223),
                  ),
                  CardWidget(
                    tit: 'Bitriel NFTs',
                    img: 'assets/images/Nft.png',
                    clr: Color.fromARGB(255, 207, 193, 229),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 24,
                  right: 24,
                ),
                child: Divider(
                  height: 2,
                  thickness: 1.5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TypeofBitriel(
                        img: 'assets/images/calendar with marked days.png',
                        ttl: 'Any Tickets',
                        isImg: false,
                      ),
                      TypeofBitriel(
                        ttl: 'Bitriel Go',
                      ),
                      TypeofBitriel(
                        ttl: 'Bitriel Pay',
                      ),
                      TypeofBitriel(
                        ttl: 'Bitriel X',
                      ),
                      TypeofBitriel(
                        ttl: 'Bitriel ID',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 30, right: 240),
          child: Text(
            'Top Coins 100',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const TopCoins()
      ],
    );
  }
}
