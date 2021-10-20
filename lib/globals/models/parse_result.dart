class ParseResult {
  final List<String> operands;
  final List<String> operators;
  final bool isInvalid;

  ParseResult(
      {required this.operands,
      required this.operators,
      required this.isInvalid});
}
