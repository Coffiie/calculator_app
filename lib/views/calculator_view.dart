import 'package:calculator_ui/globals/widgets/button_widget.dart';
import 'package:flutter/material.dart';

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
                        operandType: OperandType.nonOperator,
                        calculatorFunction: (String value) {
                          print('value');
                        },
                      ),
                      ButtonWidget(
                        title: '%',
                        operandType: OperandType.nonOperator,
                        calculatorFunction: (String value) {
                          print('value');
                        },
                      ),
                      ButtonWidget(
                        title: '/',
                        operandType: OperandType.nonOperator,
                        calculatorFunction: (String value) {
                          print('value');
                        },
                      ),
                      ButtonWidget(
                        title: '/',
                        operandType: OperandType.operator,
                        calculatorFunction: (String value) {
                          print('value');
                        },
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
                        operandType: OperandType.number,
                        calculatorFunction: (String value) {
                          print('value');
                        },
                      ),
                      ButtonWidget(
                        title: '8',
                        operandType: OperandType.number,
                        calculatorFunction: (String value) {
                          print(value);
                        },
                      ),
                      ButtonWidget(
                        title: '9',
                        operandType: OperandType.number,
                        calculatorFunction: (String value) {
                          print('value');
                        },
                      ),
                      ButtonWidget(
                        title: 'x',
                        operandType: OperandType.operator,
                        calculatorFunction: (String value) {
                          print('value');
                        },
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
                        operandType: OperandType.number,
                        calculatorFunction: (String value) {
                          print('value');
                        },
                      ),
                      ButtonWidget(
                        title: '5',
                        operandType: OperandType.number,
                        calculatorFunction: (String value) {
                          print('value');
                        },
                      ),
                      ButtonWidget(
                        title: '6',
                        operandType: OperandType.number,
                        calculatorFunction: (String value) {
                          print('value');
                        },
                      ),
                      ButtonWidget(
                        title: '-',
                        operandType: OperandType.operator,
                        calculatorFunction: (String value) {
                          print('value');
                        },
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
                        title: '1',
                        operandType: OperandType.number,
                        calculatorFunction: (String value) {
                          print('value');
                        },
                      ),
                      ButtonWidget(
                        title: '2',
                        operandType: OperandType.number,
                        calculatorFunction: (String value) {
                          print('value');
                        },
                      ),
                      ButtonWidget(
                        title: '3',
                        operandType: OperandType.number,
                        calculatorFunction: (String value) {
                          print('value');
                        },
                      ),
                      ButtonWidget(
                        title: '+',
                        operandType: OperandType.operator,
                        calculatorFunction: (String value) {
                          print('value');
                        },
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonWidget(
                      title: '0',
                      isLarge: true,
                      operandType: OperandType.number,
                      calculatorFunction: (String value) {
                        print('value');
                      },
                    ),
                    ButtonWidget(
                      title: '.',
                      operandType: OperandType.number,
                      calculatorFunction: (String value) {
                        print('value');
                      },
                    ),
                    ButtonWidget(
                      title: '=',
                      operandType: OperandType.operator,
                      calculatorFunction: (String value) {
                        print('value');
                      },
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
