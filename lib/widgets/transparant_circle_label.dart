import 'package:flutter/material.dart';
import 'package:mvhome/widgets/extension_widget.dart';

class TransparentCircleLabel extends StatelessWidget {
  final String? text;
  final IconData? iconData;
  final double? width;
  final double? height;

  const TransparentCircleLabel(
      {super.key, this.text, this.width, this.height, this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 80,
      height: height ?? 80,
      decoration: BoxDecoration(
        color: Colors.white.withAlpha(85),
        shape: BoxShape.circle,
        border: Border(top: BorderSide(color: Colors.white.withAlpha(200))),
        boxShadow: [
          BoxShadow(
            blurStyle: BlurStyle.inner,
            color: Colors.black87,
            blurRadius: 40,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Center(
        child: text?.toLabelLarge(color: Colors.white) ??
            Icon(
              iconData,
              color: Colors.white,
            ),
      ),
    );
  }
}
