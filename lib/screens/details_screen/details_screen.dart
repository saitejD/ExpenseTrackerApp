import 'package:ExpenseTracker/data/data_components.dart';
import 'package:ExpenseTracker/screens/details_screen/components/transaction_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:ExpenseTracker/screens/details_screen/components/custom_card.dart';

final Color activeColor = Color(0xffFF2E63);
final Color inactiveColor = Color(0xff6C73AE);

class DetailsScreen extends StatefulWidget {
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  String selection;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff010A43),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width * 0.4,
              decoration: BoxDecoration(
                color: Color(0xff0E164C),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                ),
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () => Navigator.of(context).pop(),
                        child: Text(
                          "< Back",
                          style: TextStyle(color: activeColor, fontSize: 20),
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Color(0xff0E164C),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset('assets/images/user.jpg'),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: Swiper(
                    itemCount: cardList.length,
                    curve: Curves.ease,
                    pagination:
                        SwiperPagination(builder: SwiperPagination.rect),
                    itemBuilder: (ctx, idx) => CustomCard(
                      index: idx,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xff0E164C),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50)),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 5,
                          width: 100,
                          color: Colors.white,
                        ),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Transactions",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 25),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Sort By",
                                  style: TextStyle(
                                    color: inactiveColor,
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(width: 10),
                                DropdownButton(
                                    value: selection,
                                    hint: Text(
                                      "Choose",
                                      style: TextStyle(
                                          color: activeColor.withOpacity(0.5),
                                          fontSize: 17),
                                    ),
                                    dropdownColor: Color(0xff010A43),
                                    iconEnabledColor: activeColor,
                                    style: TextStyle(
                                        color: activeColor, fontSize: 17),
                                    items: listItems.map((e) {
                                      return DropdownMenuItem(
                                          value: e, child: Text(e));
                                    }).toList(),
                                    onChanged: (value) {
                                      setState(() {
                                        selection = value;
                                      });
                                    })
                              ],
                            )
                          ],
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemBuilder: (ctx, i) => TransactionTile(
                              amount: transactions[i].price,
                              name: transactions[i].name,
                              paid: transactions[i].paid,
                              imageUrl: transactions[i].image,
                            ),
                            itemCount: transactions.length,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
