import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LandingText extends StatelessWidget {
  const LandingText({
    super.key,
    required this.header,
    required this.footer
  });

  final String header, footer;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    var headerStyle = theme.textTheme.displaySmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w500
    );
    var footerStyle = theme.textTheme.headlineMedium!.copyWith(
        color: theme.colorScheme.onSecondary,
        fontWeight: FontWeight.w200
    );

    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image(image: AssetImage('assets/cred_logo.png')),
          Text(header, style: headerStyle),
          SizedBox(height: 20,),
          FractionallySizedBox(
              widthFactor: 0.7,
              child: Text(footer, style: footerStyle)
          )
        ]
    );
  }
}