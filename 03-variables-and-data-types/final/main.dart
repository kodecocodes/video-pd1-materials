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

void main() {
  var myAge = 35;
  print(myAge);
  
  int yourAge = 42;
  print(yourAge);
  
  var pi = 3.14;
  double c = 299792458;
  print(pi);
  print(c);
  
  dynamic numberOfKittens;
  numberOfKittens = 'There are no kittens!';
  print(numberOfKittens);
  numberOfKittens = 8.0;
  print(numberOfKittens);
  
  numberOfKittens = 0;
  bool areThereKittens = false;
  print(areThereKittens);
  numberOfKittens = 8;
  areThereKittens = true;
  print(areThereKittens);
  
  int numberOfPuppies;
  print(numberOfPuppies);
  
  const speedOfLight = 299792458;
  print(speedOfLight);
  
  final planet = 'Jupiter';
  final String moon = 'Europa';
  
  print('$planet has a moon $moon');
  
  const avogadro = 6.023e23;
  print(avogadro);
  
  var numbers = [1, 2, 3];
  numbers.add(4);
  print(numbers);
  
  final moreNumbers = const [7, 8, 9];
//   moreNumbers = [4, 5, 6]; // error since moreNumbers is final
//   moreNumbers.add(10); // exception since list is const
  print(moreNumbers);
}
