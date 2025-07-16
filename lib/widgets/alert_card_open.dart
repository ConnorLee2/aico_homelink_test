import 'package:aico_homelink_test_app/widgets/alert_card_actions.dart';
import 'package:aico_homelink_test_app/widgets/alert_card_information.dart';
import 'package:flutter/material.dart';

class AlertCardOpen extends StatelessWidget {
  final VoidCallback onButtonPress;
  const AlertCardOpen({required this.onButtonPress, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: ClipPath(
        clipper: ShapeBorderClipper(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            border: Border(
              left: BorderSide(color: Colors.pink, width: 8),
              top: BorderSide(color: Colors.pink, width: 1),
              right: BorderSide(color: Colors.pink, width: 1),
              bottom: BorderSide(color: Colors.pink, width: 1),
            ),
          ),
          child: Column(
            children: [
              AlertCardInformation(),
              AlertCardActions(onButtonPress: onButtonPress),
            ],
          ),
        ),
      ),
    );
  }
}
