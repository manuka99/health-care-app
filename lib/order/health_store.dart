// ignore_for_file: camel_case_types, deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ordermedicine/order/payment_ui.dart';

import 'store_model.dart';
import 'navigate.dart';

class healthStore extends StatelessWidget {
  const healthStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Health Store',
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
        bottom: AppBar(
          backgroundColor: Colors.blue,
          title: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: const Color.fromRGBO(243, 243, 243, 1),
            ),
            width: double.infinity,
            height: 40,
            child: const Center(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search for items....',
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color.fromRGBO(120, 110, 247, 1),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: GridView.builder(
          itemCount: listOfItems.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 10.0 / 10.0,
          ),
          itemBuilder: (BuildContext context, int index) {
            itemModel item = listOfItems[index];
            return itemView(
              imageItem: item.imageItem,
              name: item.name,
              price: item.price,
            );
          }),
    );
  }
}

class itemView extends StatelessWidget {
  final String imageItem;
  final String name;
  final String price;

  itemView({
    required this.imageItem,
    required this.name,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        fit: StackFit.passthrough,
        overflow: Overflow.visible,
        children: [
          Container(
            height: 175,
            width: 132,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontFamily: 'Rasa',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 7,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      price,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.bottomCenter,
                        child: TextButton(
                         onPressed: () => {
                          Navigator.of(context).push(MaterialPageRoute(
                          builder:(_){
                            return const Payform();
                      },
                      ),
                      ),
                      },
                          style: TextButton.styleFrom(
                              backgroundColor:
                                  const Color.fromRGBO(110, 120, 247, 1),
                              padding:
                                  const EdgeInsets.only(left: 14, right: 14),
                              shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                    width: 1.0,
                                    color: Color.fromRGBO(110, 120, 247, 1),
                                  ),
                                  borderRadius: BorderRadius.circular(40))),
                          child: const Text("Buy Now",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12)),
                        ),
                      ),
                    ])
              ],
            ),
          ),
          Positioned(
            top: -25,
            right: 3,
            left: 3,
            child: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(imageItem),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}