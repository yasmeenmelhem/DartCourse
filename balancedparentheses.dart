bool BalancedParentheses(String str) {
  int C = 0;

  for (int i = 0; i < str.length; i++) {
    if (str[i] == '(') {
      C++;
    } else if (str[i] == ')') {
      if (C == 0) {
        return false;
      }
      C--;
    }
  }

  return C == 0;
}

void main() {
  String Sentence1 = "((())("; // Unbalanced parentheses
  String Sentence2 = "(())"; // Balanced parentheses
  

  print('String 1: $Sentence1  the balance result is ${BalancedParentheses(Sentence1)}');
  

  print('String 2: $Sentence2  the balance result is ${BalancedParentheses(Sentence2)}');
}
