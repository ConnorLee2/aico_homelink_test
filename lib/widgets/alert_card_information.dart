import 'package:flutter/material.dart';

class AlertCardInformation extends StatelessWidget {
  const AlertCardInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          ListTile(
            leading: Text('Now'),
            title: Text(
              'SOS pendant activation',
              style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Image.asset(
              'assets/images/Alert with resident.png',
              width: 24,
            ),
            title: Text('at 24 Lema Lane, BS1 8MN'),
            subtitle: Text('by John Corn'),
          ),
        ],
      ),
    );
  }
}
