import 'package:flutter/material.dart';

class AlertsScreenWelcomeWidget extends StatelessWidget {
  const AlertsScreenWelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
          child: Image.asset('assets/images/plus_button.png', width: 32),
        ),
        ListTile(
          leading: Image.asset('assets/images/logo.png', width: 32),
          title: Text(
            'Hello, Michelle!',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text('see your alerts below'),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(4, 0, 4, 16),
                child: Image.asset('assets/images/person icon.png', width: 16),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(4, 0, 4, 16),
                child: Image.asset('assets/images/settings.png', width: 16),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
