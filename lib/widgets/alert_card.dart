import 'package:aico_homelink_test_app/widgets/alert_card_closed.dart';
import 'package:aico_homelink_test_app/widgets/alert_card_open.dart';
import 'package:aico_homelink_test_app/widgets/alert_card_success.dart';
import 'package:flutter/material.dart';

class AlertCard extends StatefulWidget {
  const AlertCard({super.key});

  @override
  State<AlertCard> createState() => _AlertCardState();
}

class _AlertCardState extends State<AlertCard> {
  bool isTapped = false;
  bool onButtonPressTapped = false;

  void onButtonPress() {
    setState(() {
      onButtonPressTapped = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return onButtonPressTapped
        ? AlertCardSuccess()
        : InkWell(
          child:
              isTapped
                  ? AlertCardOpen(onButtonPress: onButtonPress)
                  : AlertCardClosed(),
          onTap: () {
            setState(() {
              isTapped = !isTapped;
            });
          },
        );
  }
}
