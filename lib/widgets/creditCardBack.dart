import 'package:credit_card_app/utils/constants.dart';
import 'package:flutter/material.dart';

class CreditCardBack extends StatelessWidget {
  final String securityCode;

  CreditCardBack({this.securityCode});

  Widget _buildStack(context) => Stack(children: <Widget>[
        Container(
          child: ClipRRect(
            child: Image.asset(Constants.CREDIT_CARD_BACKGROUND, fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(16),
          ),
          height: MediaQuery.of(context).size.height / 4,
          decoration: BoxDecoration(
              color: Color(0xffa29bfe),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.8),
                  spreadRadius: 5,
                  blurRadius: 18,
                  offset: Offset(0, 1), // changes position of shadow
                ),
              ],
              borderRadius: BorderRadius.circular(16)),
        ),
        Positioned(
            left: 20,
            child: Image.asset(Constants.CREDIT_CARD_COMPANY_LOGO,
                width: 100, height: 100)),
        Positioned(
          bottom: 10,
          right: 20,
          child: Text(securityCode,style: TextStyle(fontSize: 22, color: Colors.white)))
      ]);

  @override
  Widget build(BuildContext context) {
     return Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: _buildStack(context),
    );
  }
}
