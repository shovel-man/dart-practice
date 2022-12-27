import 'package:flutter/material.dart';
import 'package:toonflix/widgets/Button.dart';
import 'package:toonflix/widgets/currency_card.dart';
//무엇이 문제인가요?

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Bro",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.87),
                            fontSize: 38,
                          ),
                        ),
                        Text("welcome back!",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 18,
                            )),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                Text(
                  'Total Balance',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 22,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  '\$5 194 482',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 48,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Button(
                      text: 'transfer',
                      bgColor: Colors.amber,
                      textColor: Colors.black,
                    ),
                    Button(
                      text: 'Request',
                      bgColor: Color(0xFF1F2123),
                      textColor: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Wallets',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const CurrencyCard(
                  name: "Bitcoin",
                  code: 'BTC',
                  amount: "6 428",
                  icon: Icons.currency_bitcoin_rounded,
                  isInverted: true,
                  offset1: 0,
                  offset2: 0,
                ),
                const CurrencyCard(
                  name: "Dollar",
                  code: 'USD',
                  amount: "6 428",
                  icon: Icons.attach_money_rounded,
                  isInverted: false,
                  offset1: 0,
                  offset2: 0,
                ),
                const CurrencyCard(
                  name: 'Euro',
                  code: 'eur',
                  amount: "999",
                  icon: Icons.euro_rounded,
                  isInverted: true,
                  offset1: 0,
                  offset2: 0,
                ),
                const CurrencyCard(
                  name: "시발",
                  code: "원",
                  amount: "40000",
                  icon: Icons.keyboard_double_arrow_left_sharp,
                  isInverted: false,
                  offset1: 0,
                  offset2: 0,
                ),
              ],
            ),
          ),
        ),
        backgroundColor: const Color(0xFF181818),
      ),
    );
  }
}
