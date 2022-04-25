/*
 * Copyright (c) 2019 Razeware LLC
 * 
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * 
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 * 
 * Notwithstanding the foregoing, you may not use, copy, modify, merge, publish, 
 * distribute, sublicense, create a derivative work, and/or sell copies of the 
 * Software in any work that is designed, intended, or marketed for pedagogical or 
 * instructional purposes related to programming, coding, application development, 
 * or information technology.  Permission for such use, copying, modification,
 * merger, publication, distribution, sublicensing, creation of derivative works, 
 * or sale is expressly withheld.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

class Grade {
  String letter;
  double points;
  double credits;
  
  Grade({this.letter, this.points, this.credits});
}

class Person {
  String firstName;
  String lastName;
  
  Person(this.firstName, this.lastName);
  
  String get fullName => '$firstName $lastName';
  
  String toString() => fullName;
}

class Student extends Person {
  var grades = <Grade>[];
  
  Student(String firstName, String lastName)
    : super(firstName, lastName) {}
  
  @override
  String get fullName => '$lastName, $firstName';
  
  double averagePoints() {
    if (grades.length == 0) {
      return 0.0;
    }    
    var totalPoints =
      grades.map((grade) => grade.points).reduce((a, b) => a + b);
    return totalPoints/grades.length;
  }
}

class SchoolBandMember extends Student {
  var minimumPracticeTime = 2;
  
  SchoolBandMember(String firstName, String lastName)
    : super(firstName, lastName) {}
}

class StudentAthlete extends Student {
  bool get isEligible =>
    grades.where((grade) => grade.letter == 'F').length < 3;
  
  StudentAthlete(String firstName, String lastName)
    : super(firstName, lastName) {}  
  
  @override
  double averagePoints() {
    if (!isEligible) {
      print("It's time to study $firstName!");
    }
    return super.averagePoints();
  }
}

void main() {
  final jon = Person('Jon', 'Snow');
  final jane = Student('Jane', 'Snow');
  print(jon.fullName);
  print(jane.fullName);
  
  final historyGrade = Grade(letter: 'B', points: 9, credits: 3);
  jane.grades.add(historyGrade);
  
//   jon.grades.add(historyGrade); // error: jon is not a Student
  
  final jessy = SchoolBandMember('Jessy', 'Catterwaul');
  final marty = StudentAthlete('Marty', 'McFly');
  
  var students = [jane, jessy, marty];
  print(students);
  
  final student = marty as Student;
  print(student);
  print(marty is Student);
  print(student is Student);
  print(jessy is! StudentAthlete);
  
  var failingGrade = Grade(letter: 'F', points: 0, credits: 0);
  marty.grades.add(historyGrade);
  marty.grades.add(failingGrade);
  marty.grades.add(failingGrade);
  marty.grades.add(failingGrade);
  
  print(marty.averagePoints());
}