import 'package:cred_assignment/listing/alignment_switch.dart';
import 'package:cred_assignment/util.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        getGrayedOutText("explore"),
        SizedBox(
          width: MediaQuery.of(context).size.width - 20,
          child: Row(
            children: [
              Text("CRED", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),),
              Spacer(),
              AlignmentSwitch()
            ],
          ),
        )
      ],
    );
  }
}