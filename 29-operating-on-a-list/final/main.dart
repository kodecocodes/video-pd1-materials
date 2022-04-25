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
  
  var pastries = ['cookies', 'cupcakes'];
  var candy = ['junior mints', 'twizzlers', 'm&ms'];
  
  var desserts = ['donuts', ...pastries, ...candy];
  print(desserts);
  
  List<String> coffees;
  desserts = [...desserts, ...?coffees];
  print(desserts);
  
  var numbers = [1, 2, 3, 4];
  var squares = numbers.map((number) => number * number).toList();
  print(squares);
  
  var evens = squares.where((square) => square % 2 == 0);
  print(evens);
    
  desserts.sort();
  print(desserts);
  
  var dessertsReversed = desserts.reversed;
  print(dessertsReversed);

  desserts.sort((d1, d2) {
    if (d1.length > d2.length) {
      return 1;
    } else if (d1.length < d2.length) {
      return -1;
    } else {
      return 0;
    }
  });
  print(desserts);
  
  var amounts = [199, 299, 299, 199, 499];
  var total = amounts.reduce((value, element) => value + element);
  print(total);
}