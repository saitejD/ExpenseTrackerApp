class Cards {
  String image;
  String name;
  double amount;
  int cardNum;

  Cards({
    this.image,
    this.name,
    this.amount,
    this.cardNum,
  });
}

List<Cards> cardList = [
  Cards(
    image: "assets/images/card1.png",
    amount: 4500.87,
    cardNum: 4535,
    name: "Master Card",
  ),
  Cards(
    image: "assets/images/card2.png",
    amount: 5300.87,
    cardNum: 90254,
    name: "Visa Card",
  ),
];

List<String> listItems = ["Recent", "Amount", "Assending", "Dessending"];

class Transaction {
  String image;
  String name;
  bool paid;
  double price;
  Transaction({this.image, this.name, this.paid, this.price});
}

List<Transaction> transactions = [
  Transaction(
      image: 'assets/images/friend1.jpg',
      name: "Vivek",
      paid: true,
      price: 750),
  Transaction(
      image: 'assets/images/friend2.jpg',
      name: "Arun Kumar",
      paid: false,
      price: 140),
  Transaction(
      image: 'assets/images/friend3.jpg',
      name: "Naveen Bhargav",
      paid: true,
      price: 100),
  Transaction(
      image: 'assets/images/friend4.jpg',
      name: "Sunny",
      paid: true,
      price: 200),
  Transaction(
      image: 'assets/images/friend5.jpg',
      name: "King BoB",
      paid: false,
      price: 523),
  Transaction(
      image: 'assets/images/friend6.jpg',
      name: "Tiger Hari",
      paid: true,
      price: 420),
];
