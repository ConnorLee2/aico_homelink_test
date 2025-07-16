import 'package:flutter/material.dart';

class AlertCardActions extends StatelessWidget {
  final VoidCallback onButtonPress;
  const AlertCardActions({required this.onButtonPress, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(16, 4, 16, 4),
          width: double.infinity,
          child: OutlinedButton(
            onPressed: onButtonPress,
            child: Text('Everything\'s OK'),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(16, 4, 16, 4),
          width: double.infinity,
          child: OutlinedButton(
            onPressed: () {},
            child: Text('Going to property now'),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(16, 4, 16, 4),
          width: double.infinity,
          child: OutlinedButton(onPressed: () {}, child: Text('Call Doctor')),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(16, 4, 16, 4),
          width: double.infinity,
          child: OutlinedButton(
            onPressed: () {},
            child: Text('I cannot visit'),
          ),
        ),
      ],
    );
  }
}
