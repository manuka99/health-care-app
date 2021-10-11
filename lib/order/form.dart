import 'dart:io';
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:image_picker/image_picker.dart';

import 'navigate.dart';

enum ImageSourceType { gallery, camera }

class mediform extends StatelessWidget {
  const mediform({Key? key}) : super(key: key);

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
      body: pharmacyform(Type),
    );
  }
}

class pharmacyform extends StatefulWidget {
  final type;
  pharmacyform(this.type);

  @override
  pharmacyformState createState() => pharmacyformState(this.type);
}

class pharmacyformState extends State<pharmacyform> {
  final _formKey = GlobalKey<FormState>();
  var _controller = TextEditingController();
  var _controller1 = TextEditingController();
  var _controller2 = TextEditingController();
  var _controller3 = TextEditingController();
  var _controller4 = TextEditingController();
  var _controller5 = TextEditingController();
  var isLoading = false;
  int _value = 1;
  var _image, imagepicker, type;

  
  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      _controller1.clear();
      return;
    }
    showDialog(
      context: context, barrierDismissible: false,

      builder: (BuildContext context){
        return AlertDialog(
          title: const Text("Successful",
          textAlign: TextAlign.center),
          content: SingleChildScrollView(
            child: ListBody(
              children: const [
                Text('Your Order Placed Successfully!'),
              ],
            ),
          ),
          actions: [
            FlatButton(onPressed: (){
              Navigator.of(context).pop();
            }, child: const Text('OK'),
            textColor: Colors.blue,
            )
          ],
        );
      }   
    );
    //_formKey.currentState!.save();
  }

  pharmacyformState(this.type);

  @override
  void initState() {
    super.initState();
    imagepicker = new ImagePicker();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      overflow: Overflow.visible,
      children: [
        Positioned(
          top: -15,
          left: 10,
          right: 10,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
            ),
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Name',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      )),
                  const SizedBox(
                    height: 4,
                  ),
                  TextFormField(
                    controller: _controller,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      hintText: 'Enter your Name..',
                      hintStyle: const TextStyle(
                        fontSize: 14,
                      ),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _controller.clear();
                            });
                          },
                          icon: const Icon(Icons.clear)),
                    ),
                    keyboardType: TextInputType.name,
                    onFieldSubmitted: (value) {
                      //validator
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter Your Name";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  const Text('Address',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      )),
                  const SizedBox(
                    height:4,
                  ),
                  TextFormField(
                    controller: _controller2,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      hintText: 'Enter your Address..',
                      hintStyle: const TextStyle(
                        fontSize: 14,
                      ),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _controller2.clear();
                            });
                          },
                          icon: const Icon(Icons.clear)),
                    ),
                    keyboardType: TextInputType.name,
                    onFieldSubmitted: (value) {
                      //validator
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter Address";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  const Text('Email',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      )),
                  const SizedBox(
                    height: 4,
                  ),
                  TextFormField(
                    controller: _controller3,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      hintText: 'Enter your email..',
                      hintStyle: const TextStyle(
                        fontSize: 14,
                      ),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _controller3.clear();
                            });
                          },
                          icon: const Icon(Icons.clear)),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    onFieldSubmitted: (value) {
                      //validator
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter Email";
                      } else if (!RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}`]+@[a-zA-Z0-9]+\.[a-zA-A]+")
                          .hasMatch(value)) {
                        return "Please Enter Valid Email";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  const Text('Phone number',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      )),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10.0)),
                          border: Border.all(
                            color: Colors.grey,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Expanded(
                            child: DropdownButton<int>(
                              focusColor: Colors.black,
                              items: const [
                                DropdownMenuItem(child: Text('94'), value: 1),
                                DropdownMenuItem(child: Text('95'), value: 2),
                                DropdownMenuItem(child: Text('96'), value: 3),
                                DropdownMenuItem(child: Text('97'), value: 4),
                                DropdownMenuItem(child: Text('98'), value: 5),
                                DropdownMenuItem(child: Text('99'), value: 6)
                              ],
                              value: _value,
                              onChanged: (value) {
                                setState(() => _value = value!);
                              },
                              //hint: const Text("Select")
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: _controller4,
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),
                            hintText: 'Enter Phone number...',
                            hintStyle: const TextStyle(
                              fontSize: 14,
                            ),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _controller4.clear();
                                  });
                                },
                                icon: const Icon(Icons.clear)),
                          ),
                          keyboardType: TextInputType.phone,
                          onFieldSubmitted: (value) {
                            //validator
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please Enter Phone Number";
                            } else if ((value.length < 10) ||
                                (value.length > 10)) {
                              return "Number Should contain 10 digits.";
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  const Text('Remarks',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      )),
                  const SizedBox(
                    height:4,
                  ),
                  TextFormField(
                    maxLines: 3,
                    controller: _controller5,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      hintText: 'Enter Remarks.',
                      hintStyle: const TextStyle(
                        fontSize: 14,
                      ),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _controller5.clear();
                            });
                          },
                          icon: const Icon(Icons.clear)),
                    ),
                    keyboardType: TextInputType.name,
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Center(
                    child: Column(
                      children: [
                        //IconButton(
                          //iconSize: 40.0,
                          //icon: const Icon(Icons.camera_enhance,
                            //  color: Colors.grey),
                          //onPressed: () {
                            //_handleURLButtonPress(
                              //  context, ImageSourceType.gallery);
                          //},
                        //)
                      ],
                    ),
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () async {
                        var source = type == ImageSourceType.gallery
                            ? ImageSource.camera
                            : ImageSource.gallery;
                        XFile image = await imagepicker.pickImage(
                            source: source,
                            imageQuality: 50,
                            preferedCameraDevice: CameraDevice.front);
                        setState(() {
                          _image = File(image.path);
                        });
                      },
                      child: Container(
                        width: 100,
                        height: 50,
                        decoration: const BoxDecoration(color: Colors.white),
                        child: _image != null
                            ? Image.file(
                                _image,
                                width: 50,
                                height: 50,
                                fit: BoxFit.fitHeight,
                              )
                            : Container(
                                decoration:
                                    const BoxDecoration(color: Colors.white),
                                width: 50,
                                height: 50,
                                child: const Icon(
                                  Icons.camera_alt,
                                  color: Colors.grey,
                                  size: 50,
                                ),
                              ),
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
                              "Submit",
                              style: TextStyle(
                                fontSize: 18,
                                color:Colors.white,
                              ),
                            ),
                            onPressed: () => _submit(),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _handleURLButtonPress(BuildContext context, var type) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => pharmacyform(type)));
  }
}
