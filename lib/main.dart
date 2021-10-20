import 'package:calculator_ui/views/calculator_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final Map<int, Color> lightPrimaryMap = {
    50: Colors.white,
    100: Colors.white10,
    200: Colors.white12,
    300: Colors.white24,
    400: Colors.white30,
    500: Colors.white38,
    600: Colors.white54,
    700: Colors.white60,
    800: Colors.white70,
    900: Colors.white,
  };
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.light,
      darkTheme: ThemeData.dark()
          .copyWith(textTheme: GoogleFonts.montserratTextTheme(Typography.whiteRedmond)),
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(),
        primarySwatch: MaterialColor(Colors.white.value, lightPrimaryMap),
      ),
      home: const CalculatorView(),
    );
  }
}
