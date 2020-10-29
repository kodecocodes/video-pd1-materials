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

import 'dart:math';

void main() {
  
  // Challenge Time - Functions!
  
  /*
   * Your challenge is to write a function that checks if 
   * a number is prime. First, write a function
   * 
   * bool isNumberDivisible(int number, int divisor)
   * 
   * to determine if one number is divisible by another.
   * Hint: Use the modulo operator %.
   * 
   * Then, write the function
   * 
   * bool isPrime(int number)
   * 
   * that returns true if prime and false otherwise. A number
   * is prime if it's only divisible by 1 and itself. Loop
   * through the numbers from 1 to the number and find the numbers
   * divisors. If it has any divisors other than 1 and itself, it is not
   * prime.
   * 
   * Check the following cases:
   * isPrime(6); // false
   * isPrime(13); // true
   * isPrime(8893); // true
   * 
   * Hint 1: Numbers less than zero are not considered prime.
   * Hint 2: Use a for loop to look for divisors. You can start at 2
   *         and if you end before the number, return false.
   * Hint 3: If you're clever, you can loop from 2 until you reach
   *         the square root of the number. Add the following import
   *         to the top of the file to access the sqrt function:
   * 
   * import 'dart:math';
   */
  
  bool isNumberDivisible(int number, int divisor) {
    return number % divisor == 0;
  }
  
  bool isPrime(int number) {
    var isPrime = true;
    for (var i = 2; i <= sqrt(number); i++) {
      if (isNumberDivisible(number, i)) {
        isPrime = false;
      }
    }
    return isPrime;
  }
  
  print(isPrime(6));
  print(isPrime(13));
  print(isPrime(8893));
}