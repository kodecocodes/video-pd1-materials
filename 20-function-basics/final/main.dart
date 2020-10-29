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

void printIfBanana(String fruit) {
  if (fruit == 'banana') {
    print('Banana!');
  }
}

bool isBanana(String fruit) {
  return fruit == 'banana';
}

bool withinTolerance({int value, int min = 0, int max = 10}) {
  return min <= value && value <= max;
}

void main() {
  
  var fruit = 'apple';
  printIfBanana(fruit);
  
  print(isBanana(fruit));
  
  fruit = 'orange';
  printIfBanana(fruit);
  print(isBanana(fruit));
  
  print(withinTolerance(min: 1, max: 10, value: 11));
  print(withinTolerance(value: 5));
  
  String fullName(String first, String last, [String title]) {
    return "${title == null ? '' : '$title '}$first $last";
  }
  
  print(fullName("Joe", "Howard"));
  print(fullName("Albert", "Einstein", "Professor"));
  
  int applyTo(int value, int Function(int) op) {
    return op(value);
  }
  
  int square(int n) {
    return n * n;
  }
  
  print(applyTo(3, square));
  
  var op = square;
  print(op(5)); 
}