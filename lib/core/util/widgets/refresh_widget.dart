import 'package:flutter/material.dart';

import '../colors.dart';

class RefreshView extends StatelessWidget {
  final Function onRefresh;
  final String message;
  final String btnMessage;

  RefreshView(
      {required this.onRefresh,
      required this.message,
      required this.btnMessage});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          message,
          style: TextStyle(color: Colors.grey),
        ),
        SizedBox(
          height: 6.0,
        ),
        InkWell(
          onTap: () {
            onRefresh();
          },
          child: Container(
            width: 130,
            height: 35.0,
            decoration: BoxDecoration(
                color: TEXT_FIELD_COLOR,
                borderRadius: BorderRadius.all(Radius.circular(5.0))),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.refresh,
                    color: DARK_OFF_FONT,
                    size: 20.0,
                  ),
                  SizedBox(
                    width: 4.0,
                  ),
                  Text(btnMessage),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
