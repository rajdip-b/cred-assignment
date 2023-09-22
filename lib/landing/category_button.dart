import 'package:cred_assignment/listing/listing.dart';
import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  const CategoryButton({super.key});

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        minimumSize: Size(MediaQuery.of(context).size.width - 20, 60)
    );

    return ElevatedButton(
        style: buttonStyle,
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const Listing())),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Go to category", style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w800)),
            SizedBox(width: 5,),
            Icon(Icons.arrow_right_alt_rounded, color: Colors.black,),
          ],
        )
    );
  }
}