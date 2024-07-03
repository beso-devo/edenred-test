import 'package:flutter/material.dart';

class BottomSheetOption extends StatelessWidget {
  final String message;
  final Function onTap;
  final Widget widget;
  final Color? textColor;

  BottomSheetOption({
    required this.message,
    required this.onTap,
    required this.widget,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 16.0, right: 16.0, top: 4.0, bottom: 4.0),
      child: InkWell(
        onTap: () => onTap(),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 35,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              widget,
              SizedBox(
                width: 20.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 100,
                child: Text(
                  message,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(
                      color: textColor == null ? Color(0xFF20313B) : textColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
