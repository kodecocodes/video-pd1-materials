void main() {
  String message;
  const chrisHasPerfectAttendance = true;
  const chrisGrade = 49;
  const meritAwardGrade = 90;
  const chrisIsMeritStudent =
      chrisHasPerfectAttendance && chrisGrade > meritAwardGrade;
  const samGrade = 99;

  print(chrisIsMeritStudent);

  if (chrisIsMeritStudent) {
    message = 'Congratulations';
  } else {
    message = 'Keep studying';
  }
  print(message);

  const betterStudent = (samGrade > chrisGrade) ? 'Sam' : 'Chris';
  print(betterStudent);
}
