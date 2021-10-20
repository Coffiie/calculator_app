import 'package:calculator_ui/globals/models/parse_result.dart';
import 'package:calculator_ui/globals/services/calculator_service.dart';
import 'package:flutter/cupertino.dart';

class CalculatorProvider extends ChangeNotifier {
  String _resultText = '';
  String get resultText => _resultText;
  set resultText(String val) {
    _resultText = val;
    notifyListeners();
  }

  String _exprText = '';
  String get exprText => _exprText;
  set exprText(String val) {
    _exprText = val;
    notifyListeners();
  }

  void handleInput(String value) {
    switch (value) {
      case 'AC':
        resultText = '';
        exprText = '';
        break;
      case 'C':
        resultText = resultText.substring(0, resultText.length - 1);
        break;
      case '%':
        resultText += '%';
        break;
      case '/':
        resultText += '/';
        break;
      case 'x':
        resultText += '*';
        break;
      case '-':
        resultText += '-';
        break;
      case '+':
        resultText += '+';
        break;
      case '=':
        {
          CalculatorService calculatorService = CalculatorService();
          ParseResult parseResult = calculatorService.parse(resultText);
          if (!parseResult.isInvalid) {
            double result = calculatorService.calculate(
                parseResult.operators, parseResult.operands);
            if (result != -1) {
              exprText = resultText;
              resultText = result.toString();
            } else {
              //show error
            }
          } else {
            //show error
          }
        }
        break;
      case '.':
        resultText += '.';
        break;
      case '0':
        resultText += '0';
        break;
      case '1':
        resultText += '1';
        break;
      case '2':
        resultText += '2';
        break;
      case '3':
        resultText += '3';
        break;
      case '4':
        resultText += '4';
        break;
      case '5':
        resultText += '5';
        break;
      case '6':
        resultText += '6';
        break;
      case '7':
        resultText += '7';
        break;
      case '8':
        resultText += '8';
        break;
      case '9':
        resultText += '9';
        break;
      default:
        break;
    }
  }
}
