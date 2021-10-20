import 'package:auto_size_text/auto_size_text.dart';
import 'package:calculator_ui/globals/widgets/button_widget.dart';
import 'package:calculator_ui/providers/calculator_provider.dart';
import 'package:calculator_ui/providers/theme_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final CalculatorProvider calculatorProvider =
        Provider.of<CalculatorProvider>(context, listen: false);
    ThemeProvider themeProvider =
        Provider.of<ThemeProvider>(context, listen: false);
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          Column(
            children: [
              Consumer<CalculatorProvider>(
                  builder: (context, calculatorProvider, _) {
                return SizedBox(
                    height: screenSize.height * 0.33,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Expanded(
                                child: AutoSizeText(
                                  calculatorProvider.exprText,
                                  textAlign: TextAlign.right,
                                  maxLines: 1,
                                  style: TextStyle(
                                      fontSize: screenSize.width * 0.1,
                                      overflow: TextOverflow.ellipsis),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Expanded(
                                child: AutoSizeText(
                                  calculatorProvider.resultText,
                                  maxLines: 1,
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      fontSize: screenSize.width * 0.25,
                                      overflow: TextOverflow.ellipsis),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ));
              }),
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
                              calculatorProvider.handleInput(value);
                            },
                          ),
                          ButtonWidget(
                            title: 'C',
                            operandType: OperandType.nonOperator,
                            calculatorFunction: (String value) {
                              calculatorProvider.handleInput(value);
                            },
                          ),
                          ButtonWidget(
                            title: '%',
                            operandType: OperandType.nonOperator,
                            calculatorFunction: (String value) {
                              calculatorProvider.handleInput(value);
                            },
                          ),
                          ButtonWidget(
                            title: '/',
                            operandType: OperandType.operator,
                            calculatorFunction: (String value) {
                              calculatorProvider.handleInput(value);
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
                              calculatorProvider.handleInput(value);
                            },
                          ),
                          ButtonWidget(
                            title: '8',
                            operandType: OperandType.number,
                            calculatorFunction: (String value) {
                              calculatorProvider.handleInput(value);
                            },
                          ),
                          ButtonWidget(
                            title: '9',
                            operandType: OperandType.number,
                            calculatorFunction: (String value) {
                              calculatorProvider.handleInput(value);
                            },
                          ),
                          ButtonWidget(
                            title: 'x',
                            operandType: OperandType.operator,
                            calculatorFunction: (String value) {
                              calculatorProvider.handleInput(value);
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
                              calculatorProvider.handleInput(value);
                            },
                          ),
                          ButtonWidget(
                            title: '5',
                            operandType: OperandType.number,
                            calculatorFunction: (String value) {
                              calculatorProvider.handleInput(value);
                            },
                          ),
                          ButtonWidget(
                            title: '6',
                            operandType: OperandType.number,
                            calculatorFunction: (String value) {
                              calculatorProvider.handleInput(value);
                            },
                          ),
                          ButtonWidget(
                            title: '-',
                            operandType: OperandType.operator,
                            calculatorFunction: (String value) {
                              calculatorProvider.handleInput(value);
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
                              calculatorProvider.handleInput(value);
                            },
                          ),
                          ButtonWidget(
                            title: '2',
                            operandType: OperandType.number,
                            calculatorFunction: (String value) {
                              calculatorProvider.handleInput(value);
                            },
                          ),
                          ButtonWidget(
                            title: '3',
                            operandType: OperandType.number,
                            calculatorFunction: (String value) {
                              calculatorProvider.handleInput(value);
                            },
                          ),
                          ButtonWidget(
                            title: '+',
                            operandType: OperandType.operator,
                            calculatorFunction: (String value) {
                              calculatorProvider.handleInput(value);
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
                            calculatorProvider.handleInput(value);
                          },
                        ),
                        ButtonWidget(
                          title: '.',
                          operandType: OperandType.number,
                          calculatorFunction: (String value) {
                            calculatorProvider.handleInput(value);
                          },
                        ),
                        ButtonWidget(
                          title: '=',
                          operandType: OperandType.operator,
                          calculatorFunction: (String value) {
                            calculatorProvider.handleInput(value);
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              )),
            ],
          ),
          Positioned(
              right: 16,
              top: 16,
              child: ElevatedButton(
                child: const Text('Change Theme'),
                onPressed: () {
                  if (themeProvider.themeMode == ThemeMode.system) {
                    themeProvider.themeMode = ThemeMode.dark;
                  } else if (themeProvider.themeMode == ThemeMode.dark) {
                    themeProvider.themeMode = ThemeMode.light;
                  } else {
                    themeProvider.themeMode = ThemeMode.dark;
                  }
                },
              )),
        ],
      ),
    ));
  }
}
