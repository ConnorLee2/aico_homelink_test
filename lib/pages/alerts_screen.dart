import 'package:aico_homelink_test_app/widgets/alert_card.dart';
import 'package:aico_homelink_test_app/widgets/alerts_screen_welcome_widget.dart';
import 'package:flutter/material.dart';

class AlertsScreen extends StatelessWidget {
  const AlertsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.lightBlueAccent, Colors.white],
        ),
      ),
      child: Scaffold(
        bottomNavigationBar: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Image.asset('assets/images/live icon.png', width: 48),
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Image.asset(
                    'assets/images/summary icon.png',
                    width: 48,
                  ),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [AlertsScreenWelcomeWidget(), AlertCard()],
            ),
          ),
        ),
      ),
    );
  }
}
