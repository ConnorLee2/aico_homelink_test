import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class AlertCardSuccessInformation extends StatefulWidget {
  const AlertCardSuccessInformation({super.key});

  @override
  State<AlertCardSuccessInformation> createState() =>
      _AlertCardSuccessInformationState();
}

class _AlertCardSuccessInformationState
    extends State<AlertCardSuccessInformation> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
      'assets/images/HomeLink_Tick_(1).mp4',
    );
    _controller.initialize().then((_) {
      _controller.play();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 32, 0, 8),
          child: Text(
            'Thank you for your update!',
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.all(16),
          width: 128,
          height: 128,
          child: VideoPlayer(_controller),
        ),
      ],
    );
  }
}
