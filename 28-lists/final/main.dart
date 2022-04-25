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
  
  var pastries = List<String>(4);
  
  pastries[0] = 'cookies';
  pastries[1] = 'cupcakes';
  pastries[2] = 'donuts';
  pastries[3] = 'pie';
  
//   pastries.add('croissant'); // Error: pastries is fixed length
  print(pastries);
  
//   var desserts = List<String>();
  List<String> desserts = [];
  print(desserts.length);
  
  desserts.add('cookies');
  print(desserts.length);
  
  desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
  desserts.add('croissant');
  print(desserts.length);
  
  desserts.remove('cupcakes');
  print(desserts);
  
  var peanutAllergy = true;
  var candy = [
    'junior mints',
    'twizzlers',
    if (!peanutAllergy) 'reeses'
  ];
  print(candy);
  
  var numbers = [1, 2, 3];
  var doubledNumbers = [for (var number in numbers) 2 * number];
  print(doubledNumbers);
  
  print(desserts.first);
  print(desserts.last);
  
  print(desserts.isEmpty);
  print(desserts.isNotEmpty);
  
  print(desserts.firstWhere((str) => str.length < 4));
  
  for (var dessert in desserts) {
    print(dessert);
  }
  
  desserts.forEach((dessert) => print(dessert));
}