// ignore_for_file: camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'history.dart';
import 'navigate.dart';

class orderPending extends StatelessWidget {
  const orderPending({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order History',
         style: TextStyle(
          fontFamily: 'Roboto',
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context, const orderHistory());
          },
        ),
      ),
      body: Center(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                const Text("Order #2021022589",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16)),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/image/prescription.png',
                      alignment: Alignment.center,
                      width: 100,
                      height: 100,
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: const [
                    Text("Name : ", style: TextStyle(color: Colors.black, fontFamily: 'Shanti', fontSize: 16,)),
                    Text("M. H. Fernando", style: TextStyle(color: Colors.black, fontFamily: 'Shanti', fontSize: 16,)),
                  ],
                ),
                const SizedBox(
                  height: 7,
                ),
                Row(
                  children: const [
                    Text("Address : ", style: TextStyle(color: Colors.black, fontFamily: 'Shanti', fontSize: 16,)),
                    Text("Temple Road, Maharagama", style: TextStyle(color: Colors.black, fontFamily: 'Shanti', fontSize: 16,)),
                  ],
                ),
                const SizedBox(
                  height: 7,
                ),
                Row(
                  children: const [
                    Text("Phone No. : ", style: TextStyle(color: Colors.black, fontFamily: 'Shanti', fontSize: 16,)),
                    Text("071 2563886", style: TextStyle(color: Colors.black, fontFamily: 'Shanti', fontSize: 16,)),
                  ],
                ),
                const SizedBox(
                  height: 7,
                ),
                Row(
                  children: const [
                    Text("Status : ", style: TextStyle(color: Colors.black, fontFamily: 'Shanti', fontSize: 16,)),
                        Text("Paid", style: TextStyle(color: Colors.red, fontFamily: 'Shanti', fontSize: 16,)),
                  ],
                ),
                const SizedBox(
                  height: 7,
                ),
                Row(
                  children: const [
                    Text("Amount : ", style: TextStyle(color: Colors.black, fontFamily: 'Shanti', fontSize: 16,)),
                    Text("Rs.2500.00", style: TextStyle(color: Colors.black, fontFamily: 'Shanti', fontSize: 16,)),
                  ],
                ),
                const SizedBox(
                  height: 7,
                ),
                Row(
                  children: const [
                    Text("Date of Delivery : ", style: TextStyle(color: Colors.black)),
                    Text("2021/12/30", style: TextStyle(color: Colors.redAccent)),
                  ],
                ),
                const SizedBox(
                  height: 7,
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  child: TextButton(
                    onPressed: () =>
                        {Navigator.of(context).pushNamed("/order/details")},
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.only(left: 14, right: 14),
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1.0, color: Colors.blue),
                            borderRadius: BorderRadius.circular(40))),
                    child: const Text("Cancel",
                        style:
                            TextStyle(color: Colors.lightBlue, fontSize: 13)),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  child: TextButton(
                    onPressed: () =>
                        {Navigator.of(context).pushNamed("/order/details")},
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.only(left: 14, right: 14),
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1.0, color: Colors.blue),
                            borderRadius: BorderRadius.circular(40))),
                    child: const Text("Cancel Order",
                        style:
                            TextStyle(color: Colors.lightBlue, fontSize: 13)),
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                 Container(
                  alignment: Alignment.bottomCenter,
                  child: TextButton(
                    onPressed: () =>
                        {Navigator.of(context).pushNamed("/order/details")},
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.only(left: 14, right: 14),
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1.0, color: Colors.grey),
                            borderRadius: BorderRadius.circular(40))),
                    child: const Text("Close",
                        style:
                            TextStyle(color: Colors.grey, fontSize: 13)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
