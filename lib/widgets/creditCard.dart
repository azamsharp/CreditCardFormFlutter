
import 'package:credit_card_app/widgets/creditCardBack.dart';
import 'package:credit_card_app/widgets/creditCardFront.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class CreditCard extends StatefulWidget {
  @override
  _CreditCardState createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  String _name = "";
  String _creditCardNumber = "";
  String _securityCode = "";

  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: FlipCard(
                key: cardKey,
                flipOnTouch: false,
                front: CreditCardFront(name: _name,creditCardNumber: _creditCardNumber),
                back: CreditCardBack(securityCode: _securityCode),
              ),
            ),
            TextField(
              onChanged: (value) {
                setState(() {
                  _name = value;
                });
              },
              decoration: InputDecoration(labelText: "Enter name"),
            ),
            TextField(
              onChanged: (value) {
                setState(() {
                  _creditCardNumber = value;
                });
              },
              decoration: InputDecoration(labelText: "Enter credit card number"),
            ),
             TextField(
               onChanged: (value) {
                 setState(() {
                   _securityCode = value; 
                 });
               },
              onSubmitted: (value) {
                setState(() {
                  cardKey.currentState.toggleCard(); 
                });
               },
              onTap: () {
                setState(() {
                  cardKey.currentState.toggleCard(); 
                });
              },
              decoration: InputDecoration(labelText: "Enter security code"),
            )
          ],
        ),
      ),
    );
  }
}
