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

class Actor {
  final String name;
  var filmography = <String>[];
  
  Actor(this.name, this.filmography);
  
  Actor.rey({this.name = "Daisy Ridley"}) {
    filmography = ['Star Wars', 'Murder on the Orient Express',
                  'Ophelia'];
  }
  
  Actor.inTraining(String name) : this(name, []);

  Actor.gameOfThrones(String name)
      : this.name = name, this.filmography = ['Game of Thrones'] {
    print('My name is ${this.name}');    
  }  
  
  String get debut => '$name debuted in ${filmography.first}';
  set debut(String value) => filmography.insert(0, value);
    
  void signOnForSequel(String franchiseName) {
    filmography.add('Upcoming $franchiseName sequel');
  }
  
  String toString() {
    var actor = "$name\n";
    for (var film in filmography) {
      actor += "- $film\n";
    }
    return actor;
  }
}

class MovieHouse {
  final String name;
  
  const MovieHouse(this.name);
  
  String toString() { return this.name; }
}

void main() {

  var gotgStar = Actor('Zoe Saldana', ['Guardians of the Galaxy']);
  gotgStar.filmography.add('Avatar');
  gotgStar.signOnForSequel('Guardians of the Galaxy');
//   gotgStar.name = 'Gamora'; // error name is final
  
  print(gotgStar);
  
  var rey = Actor.rey();
  print(rey);
  
  var superstar = Actor.inTraining('Future Super Star');
  print(superstar);

  var kit = Actor.gameOfThrones('Kit Harington');
  print(kit);   
  
  final theFlick = MovieHouse('The Flick');
  print(theFlick);
  
  print(rey.debut);
  
  gotgStar.debut = 'Center Stage';
  print(gotgStar);
  
  var starTrekStar = gotgStar;
  starTrekStar.filmography.add('Star Trek');
  starTrekStar.signOnForSequel('Star Trek');
  
  print(starTrekStar);
  print(gotgStar);
}