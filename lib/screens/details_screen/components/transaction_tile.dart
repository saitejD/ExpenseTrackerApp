import 'package:flutter/material.dart';

final Color activeColor = Color(0xffFF2E63);
final Color inactiveColor = Color(0xff6C73AE);

class TransactionTile extends StatelessWidget {
  final String imageUrl, name;
  final double amount;
  final bool paid;

  const TransactionTile(
      {Key key, this.imageUrl, this.name, this.amount, this.paid})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(10),
      leading: Container(
        width: 60,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Image.asset(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
      title: Text(
        name,
        style: TextStyle(color: inactiveColor, fontSize: 18),
      ),
      subtitle: Status(paid: paid),
      trailing: Text(
        "\$$amount",
        style: TextStyle(
          fontSize: 24,
          color: Colors.white,
        ),
      ),
    );
  }
}
