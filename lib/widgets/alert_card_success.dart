import 'package:aico_homelink_test_app/widgets/alert_card_information.dart';
import 'package:aico_homelink_test_app/widgets/alert_card_success_information.dart';
import 'package:flutter/material.dart';

class AlertCardSuccess extends StatelessWidget {
  const AlertCardSuccess({super.key});

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
          decoration: const BoxDecoration(
            border: Border(
              left: BorderSide(color: Colors.green, width: 8),
              top: BorderSide(color: Colors.green, width: 1),
              right: BorderSide(color: Colors.green, width: 1),
              bottom: BorderSide(color: Colors.green, width: 1),
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Text(
                  'Resolved',
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                ),
              ),
              Divider(),
              AlertCardInformation(),
              AlertCardSuccessInformation(),
            ],
          ),
        ),
      ),
    );
  }
}
