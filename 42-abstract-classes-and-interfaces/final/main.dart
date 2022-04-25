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

enum BloodType { warm, cold }

abstract class Animal {
  BloodType bloodType;  
  bool hasMilk;
  bool hasNeoCortex;
  
  String toString() {
    return 'Bloodtype: $bloodType\nMilk: $hasMilk\nNeoCortex: $hasNeoCortex\n';
  }
}

abstract class Reptile extends Animal {
  BloodType bloodType = BloodType.cold;
  bool hasMilk = false;
  bool hasNeoCortex = false;
}

abstract class Mammal extends Animal {
  BloodType bloodType = BloodType.warm;
  bool hasMilk = true;
  bool hasNeoCortex = true;
  
  void goSwimming();
}

class Human extends Mammal {
  @override
  void goSwimming() {
    print("Hey! I'm swimming!");
  }
}

class Dolphin extends Mammal implements Comparable {
  String name;
  double length;
  
  Dolphin (this.name, this.length);
  
  @override
  void goSwimming() {
    print("Click! Click! Click!");
  }

  @override
  int compareTo(other) {
    if (length > other.length) {
      return 1;
    } else if (length < other.length) {
      return -1;
    }
    return 0;
  }
  
  @override
  String toString() => '$name($length)';
}

class Cat extends Mammal {
  @override
  void goSwimming() {
    print("No thanks!");
  }
}

void main() {
//   var snake = Reptile(); // error: can't instantiate abstract class
  
  var jessy = Human();
  var flipper = Dolphin('flipper', 4.0);
  var catie = Cat();
  
  print(jessy);
  print(flipper);
  print(catie);

  jessy.goSwimming();
  flipper.goSwimming();
  catie.goSwimming();
  
  var orca = Dolphin('orca', 8.0);
  var alpha = Dolphin('alpha', 5.0);
  var beta = Dolphin('beta', 3.0);
    
  var dolphins = [alpha, beta, orca, flipper];
  dolphins.sort();
  print(dolphins);
}