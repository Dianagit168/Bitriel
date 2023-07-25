import 'package:bitriel/screens/home_screen.dart';

import 'package:flutter/material.dart';

import '../data/data_coin.dart';
import '../widgets/body/infomation.dart';

class AboutCion extends StatelessWidget {
  const AboutCion({Key? key, required this.aboutCoins}) : super(key: key);
  final DataCoins? aboutCoins;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 241, 249),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 60,
                width: double.infinity,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        size: 15,
                      ),
                    ),
                    const SizedBox(
                      width: 120,
                    ),
                    Text(
                      '${aboutCoins!.tit}',
                      style: const TextStyle(
                          fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                height: 715,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image.asset('${aboutCoins!.img}'),
                      ),
                      Text(
                        '\$ ${aboutCoins!.values}',
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color.fromARGB(255, 224, 245, 226),
                        ),
                        child: Center(
                          child: Text(
                            ' + ${aboutCoins!.percent}',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Color.fromARGB(255, 25, 190, 33),
                            ),
                          ),
                        ),
                      ),
                      Image.asset(
                        '${aboutCoins!.chard}',
                        width: 350,
                        height: 225,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        height: 170,
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(
                                right: 250,
                              ),
                              child: Text(
                                'Information',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            InfoCoin(
                                tit: 'Market Cap',
                                val: '\$ ${aboutCoins!.marketCap}'),
                            InfoCoin(
                                tit: 'Volume(24h)',
                                val: '\$ ${aboutCoins!.volume}'),
                            InfoCoin(
                                tit: 'Circulating Supply',
                                val: '${aboutCoins!.circulating}'),
                            InfoCoin(
                                tit: 'Total Supply',
                                val: ' ${aboutCoins!.total}'),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 24,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize: const Size(150, 46),
                                primary:
                                    const Color.fromARGB(255, 89, 188, 124),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                              child: const Text(
                                'Buy',
                                style: TextStyle(fontSize: 17),
                              ),
                              onPressed: () {},
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize: const Size(150, 46),
                                primary:
                                    const Color.fromARGB(255, 255, 114, 114),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                              child: const Text(
                                'Sell',
                                style: TextStyle(fontSize: 17),
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      )
                    ],
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
