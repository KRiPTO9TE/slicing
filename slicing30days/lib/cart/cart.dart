import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slicing30days/glassmorphism/glasmorphism.dart';
import 'package:slicing30days/theme.dart';

//set this class on home: attribute at main.dart file
class Cart extends StatefulWidget {
  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  int indexselected = -1;
  String _enteredText = '';
  String _enteredText1 = '';
  String _enteredText2 = '';
  String _enteredText3 = '';

  @override
  Widget build(BuildContext context) {
    Widget option(int index, String judul, String imgsrc) {
      return GestureDetector(
        onTap: () {
          setState(() {
            indexselected = index;
          });
        },
        child: Container(
          margin: EdgeInsets.only(top: 16),
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
              border: Border.all(
                  width: 2,
                  color: indexselected == index
                      ? Color(0xff007AFF)
                      : Colors.transparent)),
          padding: EdgeInsets.all(16),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('$imgsrc'),
                SizedBox(
                  width: 27,
                ),
                Text(
                  '$judul',
                  style: subhead1TextStyle.copyWith(fontSize: 18),
                ),
              ],
            ),
            indexselected == index
                ? Image.asset('assets/img/cek.png')
                : Image.asset('assets/img/unc.png'),
          ]),
        ),
      );
    }

    ;
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Payment',
          style: h2TextStyle.copyWith(color: Colors.black),
        ),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              option(0, 'Paypal', 'assets/img/logos_paypal.png'),
              option(1, 'Mastercard', 'assets/img/logos_mastercard.png'),
              option(2, 'Visa', 'assets/img/visa.png'),
              indexselected == 2
                  ? Container(
                      margin: EdgeInsets.only(top: 16),
                      width: double.infinity,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          border:
                              Border.all(width: 2, color: Color(0xff007AFF))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Card Numbers',
                            style: paragraph4TextStyle.copyWith(
                                color: Colors.black.withOpacity(0.4)),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          TextField(
                            onChanged: (value) {
                              setState(() {
                                _enteredText = value;
                              });
                            },
                            maxLength: 16,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              suffixIcon: ImageIcon(
                                AssetImage("assets/img/check.png"),
                                color: _enteredText.length == 16
                                    ? Color(0xff007AFF)
                                    : Color(0xff959595),
                              ),
                              counterText: '',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0)),
                              isDense: true, // Added this
                              contentPadding: EdgeInsets.only(
                                  top: 9, bottom: 9, left: 16), // Added this
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Expiration Date',
                                    style: paragraph4TextStyle.copyWith(
                                        color: Colors.black.withOpacity(0.4)),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    width: 130,
                                    child: TextField(
                                      onChanged: (value) {
                                        setState(() {
                                          _enteredText2 = value;
                                        });
                                      },
                                      maxLength: 5,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        suffixIcon: ImageIcon(
                                          AssetImage("assets/img/check.png"),
                                          color: _enteredText2.length == 5
                                              ? Color(0xff007AFF)
                                              : Color(0xff959595),
                                        ),
                                        counterText: '',
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(8.0)),
                                        isDense: true, // Added this
                                        contentPadding: EdgeInsets.only(
                                            top: 9,
                                            bottom: 9,
                                            left: 16), // Added this
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 24,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'CVV',
                                    style: paragraph4TextStyle.copyWith(
                                        color: Colors.black.withOpacity(0.4)),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    width: 130,
                                    child: TextField(
                                      onChanged: (value) {
                                        setState(() {
                                          _enteredText3 = value;
                                        });
                                      },
                                      
                                      maxLength: 3,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        suffixIcon: ImageIcon(
                                          AssetImage("assets/img/check.png"),
                                          color: _enteredText3.length == 3
                                              ? Color(0xff007AFF)
                                              : Color(0xff959595),
                                        ),
                                        counterText: '',
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(8.0)),
                                        isDense: true, // Added this
                                        contentPadding: EdgeInsets.only(
                                            top: 9,
                                            bottom: 9,
                                            left: 16), // Added this
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Card Holder's Name",
                            style: paragraph4TextStyle.copyWith(
                                color: Colors.black.withOpacity(0.4)),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          TextField(
                            onChanged: (value) {
                              setState(() {
                                _enteredText1 = value;
                              });
                            },
                            decoration: InputDecoration(
                              suffixIcon: ImageIcon(
                                AssetImage("assets/img/check.png"),
                                color: _enteredText1.length >= 8
                                    ? Color(0xff007AFF)
                                    : Color(0xff959595),
                              ),
                              counterText: '',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0)),
                              isDense: true, // Added this
                              contentPadding: EdgeInsets.only(
                                  top: 9, bottom: 9, left: 16), // Added this
                            ),
                          )
                        ],
                      ),
                    )
                  : Container(),
            ],
          )),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          height: 80,
          padding: const EdgeInsets.only(top: 22, left: 16, right: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Like button
              Container(
                width: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total',
                      style: paragraph2TextStyle.copyWith(color: Colors.black),
                    ),
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          builder: (context) => DraggableScrollableSheet(
                            initialChildSize: 0.27,
                            minChildSize: 0.2,
                            maxChildSize: 1,
                            builder: (context, scrollController) {
                              return Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 24),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(16),
                                      topLeft: Radius.circular(16)),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Subtotal',
                                          style: paragraph1TextStyle.copyWith(
                                              color: Colors.black),
                                        ),
                                        Text(
                                          '€192.89',
                                          style: h3TextStyle.copyWith(
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Shipping',
                                          style: paragraph1TextStyle.copyWith(
                                              color: Colors.black),
                                        ),
                                        Text(
                                          '€8.00',
                                          style: h3TextStyle.copyWith(
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    Divider(
                                      color: Colors.black,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Total',
                                          style: h4TextStyle.copyWith(
                                              color: Colors.black),
                                        ),
                                        Text(
                                          '€200.89',
                                          style: h3TextStyle.copyWith(
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                        top: 8,
                                      ),
                                      height: 52,
                                      width: double.infinity,
                                      child: ElevatedButton(
                                          onPressed: () {},
                                          style: ButtonStyle(
                                              backgroundColor: indexselected !=
                                                      -1
                                                  ? MaterialStateProperty.all(
                                                      Color(0xff007AFF))
                                                  : MaterialStateProperty.all(
                                                      Colors.grey),
                                              shape: MaterialStateProperty.all<
                                                      RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                              ))),
                                          child: Text(
                                            'Pay Now',
                                            style: h4TextStyle.copyWith(
                                                color: Colors.white),
                                          )),
                                    )
                                  ],
                                ),
                              );
                            },
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Text(
                            '€200.89',
                            style: h3TextStyle.copyWith(color: Colors.black),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Image.asset("assets/img/up.png")
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                width: 160,
                child: ElevatedButton(
                  child: Text(
                    'Pay Now!',
                    style: h4TextStyle.copyWith(color: Colors.white),
                  ),
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: indexselected != -1
                          ? MaterialStateProperty.all(Color(0xff007AFF))
                          : MaterialStateProperty.all(Colors.grey),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ))),
                ),
              ),
              // Bookmark/Save button
            ],
          ),
        ),
      ),
    );
  }
}
