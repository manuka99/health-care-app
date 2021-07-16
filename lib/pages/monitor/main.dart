import 'package:doctor_nest/pages/monitor/section1.dart';
import 'package:doctor_nest/pages/monitor/section2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:doctor_nest/pages/monitor/app_bar.dart';

class Monitor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: MonitorBody(),
    );
  }
}

class MonitorBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Section1(), //section 1 with title, country and icon buttons
        Section2(), //section 2 with vertical scroll bar and its content
      ],
    );
  }
}

//section 2 with vertical scroll bar
Widget buildSection2() {
  return Container();
}

//section 3 with horizontal scroll bar and banners
Widget buildSection3() {
  return Container();
}

//section 4 with doctors
Widget buildSection4() {
  return Container();
}
