import 'package:finance_mobile_app/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:finance_mobile_app/constants/constants.dart';

class TransactionCard extends StatefulWidget {
  final Transaction transaction;

  TransactionCard ({Key? key, required this.transaction}): super(key: key);

  @override
  _TransactionCardState createState() => _TransactionCardState();
}

class _TransactionCardState extends State<TransactionCard> {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: size.width  * 0.8,
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kDarkColor.withOpacity(0.1),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.account_balance_wallet,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Container(
                      width: (size.width - 90) * 0.5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            //'name',
                            widget.transaction.name!,
                            style: TextStyle(
                                fontSize: 15,
                                color: kDarkColor,
                                fontWeight: FontWeight.w500),
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 5),
                          Text(
                             widget.transaction.date!,
                            style: TextStyle(
                                fontSize: 12,
                                color: kDarkColor.withOpacity(0.5),
                                fontWeight: FontWeight.w400),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                           widget.transaction.amount! + " Rs",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              color: Colors.green),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
             
            ],
          ),
         
        ],
      ),
    );
  }
}