int trippleSum(int a, int b, int c) {
  return a + b + c;
}

void main() {
  for (int i = 5; i < 8; i++) {
    print(trippleSum(1, i, i - 1));
  }
}
