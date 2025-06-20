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

bool isEven(int a) {
  if (a % 2 == 0) {
    return true;
  } else {
    return false;
  }
}

int sumList(List<int> list) {
  int sum = 0;
  for (int i in list) {
    sum += i;
  }
  return sum;
}

double average(List<int> list) {
  double average = 0;
  for (int i in list) {
    average += i;
  }
  return average / list.length;
}

int countInstancesOf(String text, String operator) {
  if (operator.length > 1) {
    print('Operator can only be one letter!');
    return 0;
  } else {
    int count = 0;
    for (int i = 0; i < text.length; i++) {
      if (text[i] == operator) {
        count++;
      }
    }
    return count;
  }
}

void main() {
  for (int i = 5; i < 8; i++) {
    print(trippleSum(1, i, i - 1));
    print(largerOf(i, 6));
    print('$i ist gerade: ${isEven(i)}');
    print(sumList([i - 1, i, i + 1]));
    print(average([i - 1, i, i + 1]));
  }

  List<String> texts = ['Rüdiger', 'Nehberg', 'Seine Schwester'];
  for (String text in texts) {
    print('Anzahl Zeichen in $text: ${textLength(text)}');
    print('Anzahl Vokale in $text: ${numberOfVowels(text)}');
    print('Anzahl R in $text: ${countInstancesOf(text, 'R')}');
  }
}
