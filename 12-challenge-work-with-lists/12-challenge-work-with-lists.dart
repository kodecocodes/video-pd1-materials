void main() {
  /**
  const grades = [82, 76, 88, 92];
  var sum = grades[0] + grades[1] + grades[2] + grades[3];
  var average = sum / 4;
  print('the average is $average');
  **/

  const grades = [82, 76, 88, 92];
  var sum = grades.first + grades[1] + grades[2] + grades.last;
  var average = sum / grades.length;
  print('the average is $average');
}
