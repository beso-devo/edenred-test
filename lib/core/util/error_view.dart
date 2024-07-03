import 'package:flutter/material.dart';
import 'colors.dart';

class ErrorView extends StatelessWidget {
  final Function onReload;
  final String message;
  final String btnContent;
  final Color color;

  ErrorView(
      {required this.onReload,
      required this.message,
      required this.color,
      required this.btnContent});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            width: MediaQuery.of(context).size.width / 1.4,
            child: Center(
              child: Text(
                message,
                style: TextStyle(color: color, fontSize: 17.0),
              ),
            )),
        SizedBox(
          height: 8.0,
        ),
        GestureDetector(
          onTap: () => onReload(),
          child: Container(
            height: 35.0,
            width: 100.0,
            decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child: Center(
              child: Text(
                btnContent,
                style: TextStyle(color: WHITE, fontSize: 16.0),
              ),
            ),
          ),
        )
      ],
    );
  }
}
