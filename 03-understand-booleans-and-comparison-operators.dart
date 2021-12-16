void main() {
  const passingGrade = 50;
  // const studentGrade = 74;
  const studentGrade = 50;

  // const studentPassed = studentGrade > passingGrade;
  const studentPassed = studentGrade >= passingGrade;
  print(studentPassed);

  const studentFailed = studentGrade < passingGrade;
  print(studentFailed);

  const chrisGrade = 49;
  const samGrade = 99;

  print(samGrade != chrisGrade);
}
