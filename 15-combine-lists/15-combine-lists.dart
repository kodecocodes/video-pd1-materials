void main() {
  var yourCards = ['8♦️', '3♣️', 'J♠️'];
  var myCards = ['10❤️', 'Q♦️', '2♠️'];
  var bonusCard = ['A♠️'];
  List<String>? emptyHand = null;

  var cards = [...yourCards, ...myCards, ...bonusCard, ...?emptyHand];
  print(cards);
}
