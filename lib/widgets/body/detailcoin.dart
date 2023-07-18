import 'package:bitriel/widgets/body/infomation.dart';
import 'package:flutter/material.dart';

class BodyD extends StatelessWidget {
  const BodyD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 715,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Image.asset('assets/images/bitcoin-441959.png'),
            const Text(
              '\$ 37,089.09',
              style: TextStyle(
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
              child: const Center(
                child: Text(
                  '+2.5%',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Color.fromARGB(255, 25, 190, 33),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 300,
            ),
            Container(
              height: 200,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
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
                  InfoCoin(tit: 'Market Cap', val: '\$408,910,725,000.00'),
                  InfoCoin(tit: 'Volume(24h)', val: '\$48,032,821,000.00'),
                  InfoCoin(tit: 'Circulating Supply', val: '19,146,012 BTC'),
                  InfoCoin(tit: 'Total Supply', val: '19,146,012 BTC'),
                ],
              ),
            ),
            Row(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(200, 50),
                    primary: const Color.fromARGB(255, 89, 188, 124),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: const Text(
                    'Buy',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(200, 50),
                    primary: const Color.fromARGB(255, 255, 114, 114),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: const Text(
                    'Sell',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
