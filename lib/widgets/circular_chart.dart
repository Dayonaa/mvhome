import 'package:flutter/material.dart';
import 'dart:math';

import 'package:mvhome/res/colors.dart';

class ChartData {
  final double value1;
  final double value2;
  final double maxValue;

  ChartData({
    required this.value1,
    required this.value2,
    required this.maxValue,
  });
}

class CircularChart extends StatelessWidget {
  final ChartData chartData;

  const CircularChart({
    super.key,
    required this.chartData,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(200, 200), // Ukuran lingkaran
      painter: _CircularChartPainter(
        value1: chartData.value1,
        value2: chartData.value2,
        maxValue: chartData.maxValue,
      ),
      child: SizedBox(
        height: 60,
        width: 60,
        // child: Center(
        //   child: Text(
        //     'Total',
        //     style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        //   ),
        // ),
      ),
    );
  }
}

class _CircularChartPainter extends CustomPainter {
  final double value1;
  final double value2;
  final double maxValue;

  _CircularChartPainter({
    required this.value1,
    required this.value2,
    required this.maxValue,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 6
      ..strokeCap = StrokeCap.round;

    final double radius = min(size.width, size.height) / 2;
    final Offset center = Offset(size.width / 2, size.height / 2);

    double startAngle = pi / 2;
    final double sweepAngle1 = (value1 / maxValue) * 2 * pi;
    final double sweepAngle2 = (value2 / maxValue) * 2 * pi;

    // Max segmen
    paint.color = AppColors.primaryGrey;
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), startAngle,
        maxValue, false, paint);
    // Segmen 1
    paint.color = AppColors.primary;
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), startAngle,
        sweepAngle1, false, paint);
    // Segmen 2
    startAngle += sweepAngle1;
    paint.color = Colors.orangeAccent;
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), startAngle,
        sweepAngle2, false, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
