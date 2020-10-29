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
  
  // Challenge Time - Maps and Sets!
  
  /*
   * Create a map with the following keys:
   * 
   * name, profession, country, state, and city
   * 
   * For the values, put your own name, profession,
   * country, state, and city.
   */
  
  var joe = {
    "name": "Joe",
    "profession": "Instructor",
    "country": "USA",
    "state": "CA",
    "city": "Sacramento"
   };
  print(joe);
  
  /*
   * You suddenly decide to move to Miami.
   * Update your city to Miami, your state to Florida,
   * and your country to USA.
   */
  
  joe["city"] = "Miami";
  joe["state"] = "FL";
  joe["country"] = "USA";
  print(joe);
  
  /*
   * Given a map in the above format, write a function that
   * prints a given person's city and state.
   */
  
  void printLocation(Map<String, String> person) {
    var city = person["city"] ?? "Unknown";
    var state = person["state"] ?? "Unknown";
    print("They live in $city, $state.");
  }

  printLocation(joe);
  
  /*
   * Create a set that contains the cities for the list of villians.
   */
  
  var joker = {"city": "Gotham"};
  var penguin = {"city": "Gotham"};
  var catwoman = {"city": "Gotham"};
  var luthor = {"city": "Metropolis"};
  var braniac = {"city": "Metropolis"};
  
  List<Map<String, String>> villians = [
    joker,
    penguin,
    catwoman,
    luthor,
    braniac
  ];
  
  var cities = <String>{};
  for (var villian in villians) {
    cities.add(villian["city"]);
  }
  
  print(cities);  
}