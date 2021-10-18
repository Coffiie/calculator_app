import 'package:calculator_ui/globals/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          SizedBox(
              height: screenSize.height * 0.33,
              child: Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '3,670',
                    style: TextStyle(fontSize: screenSize.width * 0.25),
                  ),
                ],
              ))),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ButtonWidget(
                        title: 'AC',
                      ),
                      ButtonWidget(
                        title: '%',
                      ),
                      ButtonWidget(
                        title: '/',
                      ),
                      ButtonWidget(
                        title: '/',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ButtonWidget(
                        title: '7',
                      ),
                      ButtonWidget(
                        title: '8',
                      ),
                      ButtonWidget(
                        title: '9',
                      ),
                      ButtonWidget(
                        title: 'x',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ButtonWidget(
                        title: '4',
                      ),
                      ButtonWidget(
                        title: '5',
                      ),
                      ButtonWidget(
                        title: '6',
                      ),
                      ButtonWidget(
                        title: '-',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ButtonWidget(title: '1'),
                      ButtonWidget(
                        title: '2',
                      ),
                      ButtonWidget(
                        title: '3',
                      ),
                      ButtonWidget(
                        title: '+',
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonWidget(title: '0',isLarge: true),
                    ButtonWidget(
                      title: '.',
                    ),
                    ButtonWidget(
                      title: '=',
                    ),
                  ],
                ),
              ],
            ),
          )),
        ],
      ),
    ));
  }
}
