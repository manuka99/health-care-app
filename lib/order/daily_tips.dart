// ignore_for_file: camel_case_types, unnecessary_const

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

import 'navigate.dart';

class tips extends StatelessWidget {
  const tips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Daily Tips',
        ),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context, const MyStatelessWidget());
          },
        ),
      ),
      body: ListView(
        children: [         
          Card(
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            ),
            // ignore: prefer_const_constructors
            color: Color.fromRGBO(37, 164, 204, 1),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height:100,
                        width: 100,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/image/mask.jpeg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Column(
                children: [
                  Row(
                    children: const [
                         Padding(
                           padding: EdgeInsets.fromLTRB(30.0, 25.0, 10.0, 5.0),
                           child: Text(
                              "Always Wear Your Mask",
                              style: TextStyle(
                                fontFamily: 'Sanchez',
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 18,
                              ),
                              textAlign: TextAlign.center,
                            ),
                         ),
                        ]     
                     )
                    ]
                  ),
                ],
              ),
            ]
            ),
          ),
          ),
          Card(
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            ),
            // ignore: prefer_const_constructors
            color: Color.fromRGBO(37, 204, 174, 1),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height:100,
                        width: 100,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/image/sdistance.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Column(
                children: [
                  Row(
                    children: const [
                         Padding(
                           padding: EdgeInsets.fromLTRB(30.0, 25.0, 10.0, 5.0),
                           child: Text(
                              "Keep social distance",
                              style: TextStyle(
                                fontFamily: 'Sanchez',
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 18,
                              ),
                              textAlign: TextAlign.center,
                            ),
                         ),
                        ]     
                     )
                    ]
                  ),
                ],
              ),
            ]
            ),
          ),
          ),
          Card(
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            ),
            // ignore: prefer_const_constructors
            color: Color.fromRGBO(32, 191, 76, 1),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height:100,
                        width: 100,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/image/gfoods.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Column(
                children: [
                  Row(
                    children: const [
                         Padding(
                           padding: EdgeInsets.fromLTRB(30.0, 25.0, 10.0, 5.0),
                           child: Text(
                              "Eat fresh green vegitables",
                              style: TextStyle(
                                fontFamily: 'Sanchez',
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 18,
                              ),
                              textAlign: TextAlign.center,
                            ),
                         ),
                        ]     
                     )
                    ]
                  ),
                ],
              ),
            ]
            ),
          ),
          ),
          Card(
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            ),
            // ignore: prefer_const_constructors
            color: Color.fromRGBO(101, 111, 232, 1),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height:100,
                        width: 100,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/image/drink.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Column(
                children: [
                  Row(
                    children: const [
                         Padding(
                           padding: EdgeInsets.fromLTRB(30.0, 25.0, 10.0, 5.0),
                           child: Text(
                              "drink 3L of water per day",
                              style: TextStyle(
                                fontFamily: 'Sanchez',
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 18,
                              ),
                              textAlign: TextAlign.center,
                            ),
                         ),
                        ]     
                     )
                    ]
                  ),
                ],
              ),
            ]
            ),
          ),
          ),
          Card(
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            ),
            // ignore: prefer_const_constructors
            color: Color.fromRGBO(204, 177, 37, 1),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height:100,
                        width: 100,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/image/exercise.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Column(
                children: [
                  Row(
                    children: const [
                         Padding(
                           padding: EdgeInsets.fromLTRB(30.0, 25.0, 10.0, 5.0),
                           child: Text(
                              "Do regular exercises",
                              style: TextStyle(
                                fontFamily: 'Sanchez',
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 18,
                              ),
                              textAlign: TextAlign.center,
                            ),
                         ),
                        ]     
                     )
                    ]
                  ),
                ],
              ),
            ]
            ),
          ),
          ),
          Card(
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            ),
            // ignore: prefer_const_constructors
            color: Color.fromRGBO(244, 95, 11, 1),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height:100,
                        width: 100,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/image/junk.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Column(
                children: [
                  Row(
                    children: const [
                         Padding(
                           padding: EdgeInsets.fromLTRB(30.0, 25.0, 10.0, 5.0),
                           child: Text(
                              "Do not eat junk foods",
                              style: TextStyle(
                                fontFamily: 'Sanchez',
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 18,
                              ),
                              textAlign: TextAlign.center,
                            ),
                         ),
                        ]     
                     )
                    ]
                  ),
                ],
              ),
            ]
            ),
          ),
          ),
        ],
      ),
    );
  }
}
