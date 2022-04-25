void main() {
  var grades = List<int?>.empty(growable: true);
  grades.add(100);
  grades.add(null);
  grades.add(null);

  var total = 0;
  var firstTest = grades[0];

  if (firstTest != null) {
    total += firstTest;
  }
  total += grades[1] ?? 0;
  total += grades[2]!;

  var average = total / grades.length;
  print('The average is $average');
}
