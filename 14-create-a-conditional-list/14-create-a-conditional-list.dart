void main() {
  var johnTest = 84;
  var tedTest = 32;
  var suzyTest = 80;

  var tests = [
    if (johnTest > 75) johnTest,
    if (tedTest > 75) tedTest,
    if (suzyTest > 75) suzyTest
  ];

  print(tests);
}
