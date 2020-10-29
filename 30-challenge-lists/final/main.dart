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
  
  // Challenge Time - Lists!
 
  /*
   *  Use indexOf() to determine the position of the element "Dan" in players.
   */
  
  var players = ["Alice", "Bob", "Dan", "Eli", "Frank"];
  print(players.indexOf("Dan"));
  
  /*
   *  Write a for-in loop that prints the players' names and scores.
   */
  players = ["Anna", "Brian", "Craig", "Dan", "Donna", "Eli", "Franklin"];
  var scores = [2, 2, 8, 6, 1, 2, 1];
  
  var iteration = 0;
  for (var player in players) {
    print('$player had score ${scores[iteration]}.');
    iteration++;
  }
  
  /*
   * Use where to get an iterable of all scores greater than 5.
   * Assume these scores are unique, and then use forEach and indexOf 
   * to build a list of players with high scores.
   */
  
  var highScores = scores.where((score) => score > 5);
  List<String> playersWithHighScores = [];
  highScores.forEach((score) {
    var index = scores.indexOf(score);
    playersWithHighScores.add(players[index]);
  });
  print(playersWithHighScores);
  
}