void forLoops(int range) {
  for (int i = 0; i <= range; i++) {
    print("the current value for forLoops is $i");
  }
}

void main() {
  //forLoops(10);
  print(listData());
}

Iterable<String> listData() {
  const List<int> values = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  return values.map((e) => "the current value for listData  is $e\n");
}
