void reverseList(List<dynamic> list) {
  for (int i = list.length - 1; i >= 0; i--) {
    print(list[i]);
  }
}

void main() {
  List<dynamic> originalList = [9, 10, 11, 12, 13];
  print(' $originalList');
  reverseList(originalList);
}
