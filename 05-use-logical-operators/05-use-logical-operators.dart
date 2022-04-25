void main() {
  const passingGrade = 50;
  const studentGrade = 50;
  const chrisGrade = 49;
  const samGrade = 99;

  const studentPassed = studentGrade >= passingGrade;
  const chrisPassed = chrisGrade >= passingGrade;
  const samPassed = samGrade >= passingGrade;

  print(!samPassed);
  print(!chrisPassed);

  const catName = 'Jaspurr';
  // print(!catName);

  // AND Operator
  // &&

  const bothPassed = chrisPassed && samPassed;
  print(bothPassed);

  // OR Operator
  // ||

  const eitherPassed = chrisPassed || samPassed;
  print(eitherPassed);

  const anyonePassed = chrisPassed || samPassed || studentPassed;
  print(anyonePassed);

  const everyonePassed = chrisPassed && samPassed && studentPassed;
  print(everyonePassed);

  const meritAwardGrade = 90;
  const samHasPerfectAttendance = true;

  const samIsMeritStudent =
      samHasPerfectAttendance && samGrade > meritAwardGrade;
  print(samIsMeritStudent);
}
