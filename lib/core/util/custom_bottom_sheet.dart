import 'package:flutter/material.dart';

class CustomBottomSheet extends StatefulWidget {
  final List<Widget> options;
  final double bottomSheetHeight;
  final Widget? message;

  CustomBottomSheet(
      {required this.options,
      this.message,
      this.bottomSheetHeight = 175.0 // for 2 option right now
      });

  @override
  _CustomBottomSheetState createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: widget.bottomSheetHeight,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(12.0),
              topRight: const Radius.circular(12.0))),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 24.0, bottom: 4.0),
              child: Container(
                width: 75,
                height: 7,
                decoration: BoxDecoration(
                    color: Color(0xFFC6E2DD),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
              ),
            ),
            SizedBox(
              height: 6.0,
            ),
            widget.message != null ? widget.message! : Container(),
            widget.message != null
                ? SizedBox(
                    height: 6.0,
                  )
                : Container(),
            Column(
              children: List.generate(widget.options.length, (index) {
                return widget.options[index];
              }),
            )
          ],
        ),
      ),
    );
  }
}
