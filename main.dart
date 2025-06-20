int trippleSum(int a, int b, int c) {
  return a + b + c;
}

int textLength(String text) {
  return text.length;
}

int numberOfVowels(String text) {
  int count = 0;
  for (int i = 0; i < text.length; i++) {
    if (text[i].contains(RegExp(r'[aeiou]', caseSensitive: false))) {
      count++;
    }
  }
  return count;
}

int largerOf(int a, int b) {
  if (a >= b) {
    return a;
  } else {
    return b;
  }
}

void main() {
  for (int i = 5; i < 8; i++) {
    print(trippleSum(1, i, i - 1));
    print(largerOf(i, 6));
  }

  List<String> texts = ['Rüdiger', 'Nehberg', 'Seine Schwester'];
  for (String text in texts) {
    print('Anzahl Zeichen in $text: ${textLength(text)}');
    print('Anzahl Vokale in $text: ${numberOfVowels(text)}');
  }
}
