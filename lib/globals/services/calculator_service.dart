import 'package:calculator_ui/globals/models/parse_result.dart';

class CalculatorService {
  ParseResult parse(String expression) {
    List<String> operands = [];
    List<String> operators = [];
    bool isInvalid = false;

    for (int i = 0; i < expression.length; i++) {
      if (_isOperator(expression[i])) {
        //remove it from string, add to list sand get left and right operands
        if (_isOperator(expression[i + 1])) {
          return ParseResult(isInvalid: true, operators: [], operands: []);
        }
        operators.add(expression[i]);
        expression = expression.replaceFirst(expression[i], ',');
      }
    }
    operands = expression.split(',');
    return ParseResult(
        operands: operands, operators: operators, isInvalid: isInvalid);
  }

  bool _isOperator(String expression) {
    switch (expression) {
      case '+':
        return true;
      case '-':
        return true;
      case '*':
        return true;
      case '/':
        return true;
      default:
        return false;
    }
  }

  double calculate(List<String> operatorsList, List<String> operandsList) {
    operandsList = _handlePercentage(operandsList);
    while (operatorsList.isNotEmpty) {
      String operator = '/';
      int index = operatorsList.indexOf(operator);
      double result = _evaluate(index, operandsList, operandsList, operator);
      if (result != -1) {
        operandsList.removeAt(index + 1);
        operandsList[index] = result.toString();
        operatorsList.removeAt(index);
        continue;
      }

      operator = '*';
      index = operatorsList.indexOf(operator);
      result = _evaluate(index, operandsList, operandsList, operator);
      if (result != -1) {
        operandsList.removeAt(index + 1);
        operandsList[index] = result.toString();
        operatorsList.removeAt(index);
        continue;
      }

      operator = '+';
      index = operatorsList.indexOf(operator);
      result = _evaluate(index, operandsList, operandsList, operator);
      if (result != -1) {
        operandsList.removeAt(index + 1);
        operandsList[index] = result.toString();
        operatorsList.removeAt(index);
        continue;
      }

      operator = '-';
      index = operatorsList.indexOf(operator);
      result = _evaluate(index, operandsList, operandsList, operator);
      if (result != -1) {
        operandsList.removeAt(index + 1);
        operandsList[index] = result.toString();
        operatorsList.removeAt(index);
        continue;
      }
    }

    return double.parse(operandsList[0]);
  }

  double _evaluate(int index, List<String> operatorsList,
      List<String> operandsList, String operator) {
    if (index != -1) {
      //based on index of operator we can perform operation
      //on operands and store it in operands list at the same index
      String prevOperand = operandsList[index];
      String nextOperand = operandsList[index + 1];

      double result = -1;
      switch (operator) {
        case '/':
          result = double.parse(prevOperand) / double.parse(nextOperand);
          break;
        case '*':
          result = double.parse(prevOperand) * double.parse(nextOperand);
          break;
        case '+':
          result = double.parse(prevOperand) + double.parse(nextOperand);
          break;
        case '-':
          result = double.parse(prevOperand) - double.parse(nextOperand);
          break;
      }
      return result;
    } else {
      return -1;
    }
  }

  List<String> _handlePercentage(List<String> operandsList) {
    for (int i = 0; i < operandsList.length; i++) {
      if (operandsList[i].contains('%')) {
        operandsList[i] = operandsList[i].replaceFirst('%', '');
        double value = double.parse(operandsList[i]);
        value = value / 100;
        operandsList[i] = value.toString();
      }
    }
    return operandsList;
  }
}
