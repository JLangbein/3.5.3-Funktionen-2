int trippleSum(int a, int b, int c) {
  return a + b + c;
}

int textLength(String text) {
  return text.length;
}

void main() {
  for (int i = 5; i < 8; i++) {
    print(trippleSum(1, i, i - 1));
  }

  List<String> texts = ['Rüdiger', 'Nehberg', 'Seine Schwester'];
  for (String text in texts) {
    print('Anzahl Zeichen in $text: ${textLength(text)}');
  }
}
