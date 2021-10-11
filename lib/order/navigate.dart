import 'package:flutter/material.dart';

import 'daily_tips.dart';
import 'form.dart';
import 'health_store.dart';
import 'history.dart';

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Medi Care',
         style: TextStyle(
          fontFamily: 'Roboto',
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
        ),
        leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {},
          ),
      ), 
      body:Container(
        color: Colors.white,
        child:Padding(
          padding:const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ignore: deprecated_member_use
            FlatButton(
              height: 100,
              onPressed: () => {
                Navigator.of(context).push(MaterialPageRoute(
                  builder:(_){
                    return const mediform();
                  } 
                  ),
                  ),
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
                ),
              color: Colors.blueGrey,
              padding: const EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                    Icon(Icons.local_pharmacy,
                    color: Colors.white,
                    ),
                    Text("        Pharmacy", 
                    style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                    ),
                    ],
                    ),
                  ),
                  const SizedBox(
                    height:20,
                  ),
                    // ignore: deprecated_member_use
                    FlatButton(
                      height: 100,
                      onPressed: () => {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder:(_){
                            return const orderHistory();
                          } 
                          ),
                          ),
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        ),
                      color: Colors.blueGrey,
                      padding: const EdgeInsets.all(30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                            Icon(Icons.history_rounded,
                            color: Colors.white,
                            ),
                            Text("          Order History", 
                            style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                            ),
                            ],
                            ),
                  ),
                  const SizedBox(
                    height:20,
                  ),
                    // ignore: deprecated_member_use
                    FlatButton(
                      height: 100,
                      onPressed: () => {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder:(_){
                            return const healthStore();
                          } 
                          ),
                          ),
                      },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
                ),
                  color: Colors.blueGrey,
                  padding: const EdgeInsets.all(30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                        Icon(Icons.store,
                        color: Colors.white,
                        ),
                        Text("          Health Store", 
                        style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                        ),
                        ],
                        ),
                  ),
                  const SizedBox(
                    height:20,
                  ),
                    // ignore: deprecated_member_use
                    FlatButton(
                      height: 100,
                      onPressed: () => {
                          Navigator.of(context).push(MaterialPageRoute(
                          builder:(_){
                            return const tips();
                      },
                      ),
                      ),
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        ),
                          color: Colors.blueGrey,
                          padding: const EdgeInsets.all(30.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                                Icon(Icons.health_and_safety,
                                color: Colors.white,
                                ),
                                Text("          Daily Tips", 
                                style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                             ),
                          ],
                        ),
                  )
                ],
              )
        ),
      ),
    );
  }
}



