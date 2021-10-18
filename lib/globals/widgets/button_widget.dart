import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key, required this.title, this.isLarge = false})
      : super(key: key);

  final String title;
  final bool isLarge;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        isLarge
            ? Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 1,
                          blurRadius: 10,
                          offset: Offset(-5, 0))
                    ],
                    shape: BoxShape.rectangle,
                    color: Colors.white),
                width: screenSize.width * 0.4,
                height: screenSize.height * 0.1,
              )
            : Container(
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: Offset(5, 0))
                ], shape: BoxShape.circle, color: Colors.white),
                width: screenSize.width * 0.2,
                height: screenSize.height * 0.1,
              ),
        Positioned.fill(
          child: InkWell(
            customBorder: CircleBorder(),
            onTap: () {
              print('tapped');
            },
            child: Align(
              alignment: Alignment.center,
              child: Text(
                title,
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
