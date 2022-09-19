import 'package:flutter/material.dart';

class OverlayedWidget extends StatefulWidget {
  final Widget child;
  const OverlayedWidget({Key? key, required this.child}) : super(key: key);

  @override
  State<OverlayedWidget> createState() => _OverlayedWidgetState();
}

class _OverlayedWidgetState extends State<OverlayedWidget> {
  double angle = 0.0;

  // void _onPanUpdateHandler(DragUpdateDetails details) {
  //   final touchPositionFromCenter = details.localPosition;
  //   setState(
  //     () {
  //       angle = touchPositionFromCenter.direction;
  //     },
  //   );
  // }

  double xPosition = 0;
  double yPosition = 0;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: yPosition,
      left: xPosition,
      child: GestureDetector(
        onPanUpdate: (tapInfo) {
          setState(() {
            xPosition += tapInfo.delta.dx;
            yPosition += tapInfo.delta.dy;
          });
        },
        child: Transform.rotate(
          angle: angle,
          child: widget.child
        ),
      ),
    );
  }
}