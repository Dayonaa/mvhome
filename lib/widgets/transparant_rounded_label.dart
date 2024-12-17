import 'package:flutter/material.dart';
import 'package:mvhome/widgets/extension_widget.dart';

class TransparentRoundedLabel extends StatelessWidget {
  final String text;
  final IconData icon;

  const TransparentRoundedLabel({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            blurStyle: BlurStyle.inner,
            color: Colors.black87,
            blurRadius: 40,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 24,
          ),
          SizedBox(width: 8),
          text.toTitleMedium(color: Colors.white)
        ],
      ),
    );
  }
}
