import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'navigate.dart';

class Payform extends StatelessWidget {
  const Payform({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Order History',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context, const MyStatelessWidget());
          },
        ),
      ),
      body: paymentform(Type),
    );
  }
}

class paymentform extends StatefulWidget {
  final type;
  paymentform(this.type);

  @override
  paymentformState createState() => paymentformState(type);
}

class paymentformState extends State<paymentform> {
  final _formKey = GlobalKey<paymentformState>();
  var _controller = TextEditingController();
  var _controller1 = TextEditingController();
  var _controller2 = TextEditingController();
  var _controller3 = TextEditingController();
  bool _value = false;
  int val = -1;
  var type;

  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      //  _controller1.clear();
      return;
    }
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Successful", textAlign: TextAlign.center),
            content: SingleChildScrollView(
              child: ListBody(
                children: const [
                  Text('Your Paid Successfully!'),
                ],
              ),
            ),
            actions: [
              FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Ok'),
                textColor: Colors.blue,
              )
            ],
          );
        });
    //_formKey.currentState!.save();
  }

  paymentformState(type);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
          ),
          padding: const EdgeInsets.all(20.0),
          child: ListTile(
            title: const Text("Cash on Delivery"),
            leading: Radio(
              value: 1,
              groupValue: val,
              onChanged: (int? value) {
                setState(() {
                  val = value!;
                });
              },
              activeColor: Colors.blue,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          decoration: const BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
          ),
          padding: const EdgeInsets.all(20.0),
          child: ListTile(
            title: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Credit / Debit Card'),
                const SizedBox(
                  height: 10,
                ),
                const Text('Name (As appear on Card)',
                    style: TextStyle(
                      fontSize: 14,
                      //fontWeight: FontWeight.bold,
                    )),
                const SizedBox(
                  height: 4,
                ),
                TextFormField(
                  controller: _controller,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  ),
                  keyboardType: TextInputType.name,
                  onFieldSubmitted: (value) {
                    //validator
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Card Holder Name is required!";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text('Card Number (No spaces or dashes)',
                    style: TextStyle(
                      fontSize: 14,
                      //fontWeight: FontWeight.bold,
                    )),
                const SizedBox(
                  height: 4,
                ),
                TextFormField(
                  controller: _controller1,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  ),
                  keyboardType: TextInputType.number,
                  onFieldSubmitted: (value) {
                    //validator
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Card number is required!";
                    }
                    return null;
                  },
                ),
                const Text('Date of Expiry',
                    style: TextStyle(
                      fontSize: 14,
                      // fontWeight: FontWeight.bold,
                    )),
                const SizedBox(
                  height: 4,
                ),
                TextFormField(
                  controller: _controller2,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  ),
                  keyboardType: TextInputType.number,
                  onFieldSubmitted: (value) {
                    //validator
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Date of Expiry is required!";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text('CVV Number',
                    style: TextStyle(
                      fontSize: 14,
                      //fontWeight: FontWeight.bold,
                    )),
                const SizedBox(
                  height: 4,
                ),
                TextFormField(
                  controller: _controller3,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  ),
                  keyboardType: TextInputType.number,
                  onFieldSubmitted: (value) {
                    //validator
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "CVV Number is required!";
                    }
                    return null;
                  },
                ),
              ],
            ),
            leading: Radio(
              value: 2,
              groupValue: val,
              onChanged: (int? value) {
                setState(() {
                  val = value!;
                });
              },
              activeColor: Colors.blue,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RaisedButton(
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  padding: const EdgeInsets.all(20.0),
                  child: const Text(
                    "Proceed Payment",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  onPressed: () => _submit(),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }

  validate() {}
}
