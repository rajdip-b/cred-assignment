import 'package:cred_assignment/listing/listing.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AlignmentSwitch extends StatefulWidget {
  const AlignmentSwitch({super.key});

  @override
  State<AlignmentSwitch> createState() => _AlignmentSwitchState();
}

class _AlignmentSwitchState extends State<AlignmentSwitch> {
  Icon getIcon(bool isRowView) {
    if (isRowView) {
      return Icon(Icons.list_alt_outlined, color: Colors.white,);
    } else {
      return Icon(Icons.grid_view_outlined, color: Colors.white,);
    }
  }

  @override
  Widget build(BuildContext context) {
    var layoutState = context.watch<LayoutState>();

    return GestureDetector(
      onTap: () => layoutState.toggleLayout(),
      child: Container(
        width: 50,
        height: 25,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white)
        ),
        child: AnimatedAlign(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
          alignment: layoutState.rowDisplay ? Alignment.centerLeft : Alignment.centerRight,
          child: getIcon(layoutState.rowDisplay),
        ),
      ),
    );
  }
}