/*
  Now, do the same thing for this List of lists variable!
  The printout should be

  [2, 4, 6, 8, 10]
  [3, 6, 9, 12, 15]
  [4, 8, 12, 16, 20]
  [2, 4, 6, 8, 10]
  [3, 6, 9, 12, 15]
  [4, 8, 12, 16, 20]

 */

void main() {
  List<List<int>> myList = [
    [2, 4, 6, 8, 10],
    [3, 6, 9, 12, 15],
    [4, 8, 12, 16, 20]
  ];

  for (int i = 2; i <= 10; i += 2) {
    print(i);
  }
  for (int j = 3; j <= 15; j += 3) {
    print(j);
  }
  for (int k = 4; k <= 20; k += 4) {
    print(k);
  }
  for (List lists in myList) {
    print(lists);
  }
}
