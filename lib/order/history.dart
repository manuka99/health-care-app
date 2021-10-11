// ignore_for_file: camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'history_model.dart';
import 'history_pending.dart';
import 'navigate.dart';

class orderHistory extends StatelessWidget {
  const orderHistory({Key? key}) : super(key: key);

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
            Navigator.pop(context, const MyStatelessWidget());
          },
        ),
      ),
      body: ListView.builder(
          itemCount: listOfHistory.length,
          itemBuilder: (context, index) {
            HistoryModel history = listOfHistory[index];
            return HistoryCardView(
              id: history.id,
              status: history.status,
              date: history.date,
              amount: history.amount,
            );
          }),
    );
  }
}

class HistoryCardView extends StatelessWidget {
  final String id;
  final String status;
  final String date;
  final String amount;

  HistoryCardView({
    required this.id,
    required this.status,
    required this.date,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  id,
                  style: const TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
            ]
            ),
            Row(
              children: [
                const Text("Status : ", 
                style: TextStyle(
                  fontFamily: 'Shanti',
                  fontSize: 16,
                  color: Colors.black,
                ),
                textAlign: TextAlign.start,
                ),
                Text(
                status,
                style: const TextStyle(
                fontFamily: 'Shanti',  
                fontSize: 16,
                color: Colors.black,
              ),
              textAlign: TextAlign.start,
            ),
               const SizedBox(height:10,),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Date : ", 
                style: TextStyle(
                  fontFamily: 'Shanti',
                  fontSize: 16,
                  color: Colors.black,
                ),
                textAlign: TextAlign.start,
                ),
                Text(
                date,
                style: const TextStyle(
                fontFamily: 'Shanti',  
                fontSize: 16,
                color: Colors.black,
              ),
              textAlign: TextAlign.start,
            ),
               const SizedBox(height:10,),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Amount : ", 
                style: TextStyle(
                  fontFamily: 'Shanti',
                  fontSize: 16,
                  color: Colors.black,
                ),
                textAlign: TextAlign.start,
                ),
                Text(
                amount,
                style: const TextStyle(
                fontFamily: 'Shanti',
                fontSize: 16,
                color: Colors.black,
              ),
              textAlign: TextAlign.start,
            ),
               const SizedBox(height:10,),
              ],
            ),
            Container(
            alignment: Alignment.bottomRight,
            child: TextButton(
              onPressed: () => {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder:(_){
                            return const orderPending();
                          } 
                          ),
                          ),
                      },
              style: TextButton.styleFrom(
                  padding: const EdgeInsets.only(left: 14, right: 14),
                  shape: RoundedRectangleBorder(
                      side:const BorderSide(width: 1.0, color: Colors.blue),
                      borderRadius: BorderRadius.circular(40))),
                      child: const Text("View More",
                      style: TextStyle(color: Colors.lightBlue, fontSize: 12)),
            ),
          )
          ],
        ),
      )
    );
  }
}
