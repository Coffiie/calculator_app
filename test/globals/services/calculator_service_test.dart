import 'package:calculator_ui/globals/models/parse_result.dart';
import 'package:calculator_ui/globals/services/calculator_service.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  group('CalculatorService should - ', () {
    CalculatorService calculatorService = CalculatorService();
    test('parse operands and operators', () {
      String expression = '1+23*36';
      List<String> operandsList = ['1', '23', '36'];
      List<String> operators = ['+', '*'];
      ParseResult result = ParseResult(
          operands: operandsList, operators: operators, isInvalid: false);
      expect(calculatorService.parse(expression).operators, result.operators);
      expect(calculatorService.parse(expression).operands, result.operands);
      expect(calculatorService.parse(expression).isInvalid, result.isInvalid);
    });

    test('parse operands and operators 2', () {
      String expression = '1+2336****3';
      List<String> operandsList = [];
      List<String> operators = [];
      ParseResult result = ParseResult(
          operands: operandsList, operators: operators, isInvalid: true);
      expect(calculatorService.parse(expression).operators, result.operators);
      expect(calculatorService.parse(expression).operands, result.operands);
      expect(calculatorService.parse(expression).isInvalid, result.isInvalid);
    });

    test('parse operands and operators 3', () {
      String expression = '1+23*36%';
      List<String> operandsList = ['1', '23', '36%'];
      List<String> operators = ['+', '*'];
      ParseResult result = ParseResult(
          operands: operandsList, operators: operators, isInvalid: false);
      ParseResult actual = calculatorService.parse(expression);
      expect(actual.operators, result.operators);
      expect(actual.operands, result.operands);
      expect(actual.isInvalid, result.isInvalid);
    });

    test('calculate and ADHERE to BODMAS rule', () {
      List<String> operatorsList = ['+', '*','-','/'];
      List<String> operandsList = ['1', '35', '72','90','22'];
      expect(calculatorService.calculate(operatorsList, operandsList), 2516.909090909091);
    });

     test('calculate and ADHERE to BODMAS rule 2', () {
      List<String> operatorsList = ['/','/'];
      List<String> operandsList = ['1', '2', '3'];
      expect(calculatorService.calculate(operatorsList, operandsList), 0.16666666666666666);
    });

    test('calculate and ADHERE to BODMAS rule 3', () {
      List<String> operatorsList = ['+', '*','-','/'];
      List<String> operandsList = ['1', '35', '72','90','22%'];
      expect(calculatorService.calculate(operatorsList, operandsList), 2111.909090909091);
    });
  });
}
