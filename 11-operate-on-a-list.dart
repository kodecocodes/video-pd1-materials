void main() {
  var pastries = ['cookie', 'cupcake', 'donut', 'pie'];

  print(pastries[0]);
  var morePastries = pastries.sublist(1, 3);
  print(morePastries);
  morePastries.clear();
  print(morePastries);
  print(morePastries.isEmpty);
  print(pastries[0]);
  print(pastries.first);
  print(pastries.last);
  print(pastries.length);

  print(pastries.contains('cookie'));
  print(pastries.contains('lasagna'));

  pastries.add('brownie');
  print(pastries);
  pastries[4] = 'cream puff';
  print(pastries);

  pastries.insert(1, 'tart');
  print(pastries);

  var pastry = pastries.removeAt(0);
  print(pastry);
}
