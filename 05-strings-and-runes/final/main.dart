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
  var firstName = 'Albert';
  String lastName = "Einstein";
  
  var physicist = "$firstName $lastName";
  print(physicist);
  
  var quote = 'If you can\'t'  + ' explain it simply\n'
    "you don't understand it well enough.";
  print(quote);
  
  var rawString = r"If you can't explain it simply\nyou don't understand it well enough.";
  print(rawString); 
   
  const String myNameIs = "My name is ";
  print(myNameIs);
//   myNameIs = 'Joe'; // error compile-time constant
  
  var apples = 3;
  var oranges = 5;
  var totalFruit = "Total amount of fruit is ${apples + oranges} pieces.";
  print(totalFruit);
  print('${totalFruit.length}'); 

  apples = int.parse('2');
  double bananas = double.parse('2.5');
  print('$apples and $bananas');

  var smiley = '\u263a';
  print(smiley);
  
  var womanScientist = '\u{1f469}';
  print(womanScientist);
  print(womanScientist.codeUnits);
  print(womanScientist.runes);
 
  Runes ou812 = Runes('\u{1f62f}\u{1f447}\u{1f963}\u{1f550}\u{0032}');
  print(ou812);
  print(String.fromCharCodes(ou812));
}