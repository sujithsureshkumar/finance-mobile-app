import 'package:finance_mobile_app/constants/constants.dart';
import 'package:finance_mobile_app/controller/googleSignIn.dart';
import 'package:finance_mobile_app/views/pages/countrySelect.dart';
import 'package:finance_mobile_app/views/pages/news.dart';
import 'package:finance_mobile_app/views/pages/signUp.dart';
import 'package:finance_mobile_app/views/widgets/roundButton.dart';
import 'package:finance_mobile_app/views/widgets/transactionCard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  DashboardState createState() => DashboardState();
}

class DashboardState extends State<Dashboard> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: isLoading
          ? Center(
              child: SizedBox(
                height: size.height / 20,
                width: size.height / 20,
                child: const CircularProgressIndicator(),
              ),
            )
          : SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: SizedBox(
                            width: size.width * .7,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Good Morning,",
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                Text(
                                  "Sujith S",
                                  style: TextStyle(
                                    fontSize: 34,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.notifications_none_rounded,
                                size: 33.0, color: Color(0xff4646ad)),
                            //label: Text('Home')
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height / 20,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            height: MediaQuery.of(context).size.height * 0.26,
                            decoration: BoxDecoration(
                              color: Color(0xffedf1f0),
                              //border: Border.all(color: Colors.red[500],),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            child: Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Text(
                                      "Insta Platinium",
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                18.0, 8, 8, 8),
                                            child: Text(
                                              "VISA",
                                              style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w800,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                18.0, 8, 8, 8),
                                            child: Text(
                                              "\$ 5005.6",
                                              style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                18.0, 8, 8, 18),
                                            child: Text(
                                              "**********123",
                                              style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                          child: Container(
                              width: MediaQuery.of(context).size.width * 0.44,
                              height: MediaQuery.of(context).size.height * 0.26,
                              decoration: BoxDecoration(
                                color: Color(0xffedf1f0),
                                //border: Border.all(color: Colors.red[500],),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              child: Column(children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      8.0, 8.0, 8.0, 8.0),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.42,
                                    height: MediaQuery.of(context).size.height *
                                        0.11,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 155, 243, 221),
                                      //border: Border.all(color: Colors.red[500],),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Master Card",
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      14.0, 8, 8, 15),
                                              child: RichText(
                                                text: TextSpan(
                                                  text: "\$ 500\n",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      color: Colors.black),
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                      text: "*********4343",
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w200,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      8.0, 8.0, 8.0, 8.0),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.42,
                                    height: MediaQuery.of(context).size.height *
                                        0.11,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 220, 223, 221),
                                      //border: Border.all(color: Colors.red[500],),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "RUPAY",
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      14.0, 8, 8, 15),
                                              child: RichText(
                                                text: TextSpan(
                                                  text: "\$ 900\n",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      color: Colors.black),
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                      text: "*********4823",
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w200,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ])),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(16.0, 8.0, 8.0, 8.0),
                            child: Text(
                              "Quick Services ",
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    16.0, 8.0, 8.0, 8.0),
                                child: Text(
                                  "view all ",
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                    decoration:TextDecoration.underline
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.fromLTRB(16.0, 8.0, 8.0, 8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.17,
                              height: MediaQuery.of(context).size.height * 0.11,
                              decoration: BoxDecoration(
                                color: Color(0xffedf1f0),
                                //border: Border.all(color: Colors.red[500],),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.credit_card_outlined,
                                    size: 33.0,
                                    color: Color.fromARGB(255, 53, 70, 66),
                                    //label: Text('Home')
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        1.0, 1.0, 1.0, 1.0),
                                    child: Text(
                                      "Credit Card",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 40, 43, 40),
                                        fontWeight: FontWeight.bold,
                                        //fontSize: 12
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.17,
                              height: MediaQuery.of(context).size.height * 0.11,
                              decoration: BoxDecoration(
                                color: Color(0xffedf1f0),
                                //border: Border.all(color: Colors.red[500],),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.money_outlined,
                                    size: 33.0,
                                    color: Color.fromARGB(255, 53, 70, 66),
                                    //label: Text('Home')
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        1.0, 1.0, 1.0, 1.0),
                                    child: Text(
                                      "investment",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 40, 43, 40),
                                        fontWeight: FontWeight.bold,
                                        //fontSize: 12
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (ctx) => HomePage(),
                                ));
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.17,
                                height:
                                    MediaQuery.of(context).size.height * 0.11,
                                decoration: BoxDecoration(
                                  color: Color(0xffedf1f0),
                                  //border: Border.all(color: Colors.red[500],),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.balance_outlined,
                                      size: 33.0,
                                      color: Color.fromARGB(255, 53, 70, 66),
                                      //label: Text('Home')
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          1.0, 1.0, 1.0, 1.0),
                                      child: Text(
                                        "Loan",
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 40, 43, 40),
                                          fontWeight: FontWeight.bold,
                                          //fontSize: 12
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (ctx) => CountrySelect(),
                                ));
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.17,
                                height:
                                    MediaQuery.of(context).size.height * 0.11,
                                decoration: BoxDecoration(
                                  color: Color(0xffedf1f0),
                                  //border: Border.all(color: Colors.red[500],),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.shopify_outlined,
                                      size: 33.0,
                                      color: Color.fromARGB(255, 53, 70, 66),
                                      //label: Text('Home')
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          1.0, 1.0, 1.0, 1.0),
                                      child: Text(
                                        "Shop",
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 40, 43, 40),
                                          fontWeight: FontWeight.bold,
                                          //fontSize: 12
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(19.0),
                      child: DottedBorder(
                        //radius: Radius.circular(100),
                        color: Colors.black,
                        strokeWidth: 2,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: MediaQuery.of(context).size.height * 0.11,
                          child: Padding(
                            padding:
                                const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
                            child: Row(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.17,
                                  height:
                                      MediaQuery.of(context).size.height * 0.11,
                                  decoration: BoxDecoration(
                                    color: Color(0xffedf1f0),
                                    //border: Border.all(color: Colors.red[500],),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                  ),
                                  child: Icon(
                                    Icons.arrow_upward_sharp,
                                    size: 33.0,
                                    color: Color.fromARGB(255, 53, 70, 66),
                                    //label: Text('Home')
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: RichText(
                                    text: TextSpan(
                                      text: "Income\n ",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black54),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: "\$4,263",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: size.width * .07,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.17,
                                  height:
                                      MediaQuery.of(context).size.height * 0.11,
                                  decoration: BoxDecoration(
                                    color: Color(0xffedf1f0),
                                    //border: Border.all(color: Colors.red[500],),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                  ),
                                  child: Icon(
                                    Icons.arrow_downward_sharp,
                                    size: 33.0,
                                    color: Color.fromARGB(255, 53, 70, 66),
                                    //label: Text('Home')
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: RichText(
                                    text: TextSpan(
                                      text: "Expanse\n ",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black54),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: "\$1,363",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(16.0, 8.0, 8.0, 8.0),
                            child: Text(
                              "Transactions ",
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    16.0, 8.0, 8.0, 8.0),
                                child: Text(
                                  "see all ",
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                    decoration:TextDecoration.underline
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ListView(
                        shrinkWrap: true,
                        padding: EdgeInsets.all(12),
                        children: [
                          Column(
                            children: <Widget>[
                              Column(
                                  children: transactionList.map((p) {
                                return TransactionCard(
                                  transaction: p,
                                );
                              }).toList())
                            ],
                          ),
                        ]),
                  ],
                ),
              ),
            ),
    );
  }
}
