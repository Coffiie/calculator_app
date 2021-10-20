import 'package:flutter/material.dart';

enum OperandType { number, operator, nonOperator }

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {Key? key,
      required this.title,
      required this.operandType,
      this.isLarge = false,
      required this.calculatorFunction})
      : super(key: key);

  final String title;
  final bool isLarge;
  final OperandType operandType;
  final void Function(String) calculatorFunction;

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).platformBrightness);
    final Size screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        isLarge
            ? Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    boxShadow:  [
                      BoxShadow(
                          color: MediaQuery.of(context).platformBrightness == Brightness.dark ? Theme.of(context).primaryColor : Colors.grey,
                          spreadRadius: 1,
                          blurRadius: 10,
                          offset: const Offset(-5, 0))
                    ],
                    shape: BoxShape.rectangle,
                    color: Theme.of(context).primaryColor),
                width: screenSize.width * 0.44,
                height: screenSize.height * 0.1,
              )
            : Container(
                decoration: BoxDecoration(boxShadow:  [
                  BoxShadow(
                      color:  MediaQuery.of(context).platformBrightness == Brightness.dark ? Theme.of(context).primaryColor : Colors.grey,
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: const Offset(5, 0))
                ], shape: BoxShape.circle, color:Theme.of(context).primaryColor,),
                width: screenSize.width * 0.2,
                height: screenSize.height * 0.1,
              ),
        Positioned.fill(
          child: InkWell(
            customBorder: const CircleBorder(),
            onTap: () {
              calculatorFunction(title);
            },
            child: Align(
              alignment: Alignment.center,
              child: Text(
                title,
                style: Theme.of(context).textTheme.headline4!.copyWith(
                    color: operandType == OperandType.operator
                        ? Colors.orangeAccent
                        : operandType == OperandType.nonOperator
                            ? Colors.grey
                            : Theme.of(context).textTheme.button!.color),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
