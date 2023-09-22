import 'package:cred_assignment/listing/header.dart';
import 'package:cred_assignment/listing/section_view.dart';
import 'package:cred_assignment/models/section.dart';
import 'package:cred_assignment/util.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class Listing extends StatefulWidget {
  const Listing({super.key});

  @override
  State<Listing> createState() => _ListingState();
}

class LayoutState extends ChangeNotifier {
  bool rowDisplay = true;

  void toggleLayout() {
    rowDisplay = rowDisplay ? false : true;
    notifyListeners();
  }
}

class _ListingState extends State<Listing> {
  var categories = <Section>[];
  var loaded = false;

  void setCategories(List<Section> cat) {
    setState(() {
      categories = cat;
    });
  }

  void setFinished() {
    setState(() {
      loaded = true;
    });
  }

  @override
  void initState() {
    super.initState();
    fetchCategories()
        .then(setCategories)
        .whenComplete(setFinished);
  }

  Widget getDisplay() {
    if (!loaded) {
      return Center(
        child: getGrayedOutText("loading your data..."),
      );
    } else if (loaded && categories.isEmpty) {
      return Center(
        child: getGrayedOutText("hmm.... we don't have anything to show!"),
      );
    } else {
      return SingleChildScrollView(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
          child: AnimatedPositioned(
            duration: const Duration(seconds: 1),
            curve: Curves.bounceInOut,
            child: Wrap(
              runSpacing: 30,
              children: [
                Header(),
                SizedBox(height: 20,),
                for (var cat in categories)
                  SectionView(section: cat)
              ],
            ),
          )
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LayoutState(),
      child: Scaffold(
        body: Padding(
            padding: EdgeInsets.only(
                top: 100,
                bottom: 30,
                left: 25,
                right: 25
            ),
            child: getDisplay()
        ),
      ),
    );
  }
}