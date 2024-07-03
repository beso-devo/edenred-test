import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class OpenContainerWrapper extends StatelessWidget {
  const OpenContainerWrapper({
    required this.closedBuilder,
    required this.transitionType,
    required this.destination,
  });

  final closedBuilder;
  final ContainerTransitionType transitionType;
  final Widget destination;

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      closedElevation: 0,
      transitionDuration: Duration(milliseconds: 350),
//      closedShape: RoundedRectangleBorder(
//        borderRadius: BorderRadius.all(Radius.circular(12.0))
//      ),
      transitionType: transitionType,
      openBuilder: (BuildContext context, VoidCallback _) {
        return destination;
      },
      tappable: false,
      closedBuilder: closedBuilder,
    );
  }
}
