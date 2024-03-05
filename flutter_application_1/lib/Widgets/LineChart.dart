import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartWidget extends StatelessWidget {
  final List<FlSpot> chartData = [
    FlSpot(1, 1),
    FlSpot(2, 1.2),
    FlSpot(3, 1.1),
    FlSpot(4, 1.4),
    FlSpot(6, 1.2),
    FlSpot(7.5, 1.6),
    FlSpot(8, 1.82),
  ];

  LineChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.yellow,
      margin: EdgeInsets.symmetric(horizontal: 60),
      height: MediaQuery.of(context).size.height * 0.12,
      width: MediaQuery.of(context).size.width * 0.63,
      child: LineChart(
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInBack,
        LineChartData(
          titlesData: FlTitlesData(show: false),
          gridData: FlGridData(show: false),
          borderData: FlBorderData(show: false),
          lineBarsData: [
            LineChartBarData(
                isCurved: true,
                barWidth: 4,
                spots: chartData,
                color: Colors.blueAccent.withOpacity(0.8),
                isStrokeCapRound: true,
                dotData: const FlDotData(show: false))
          ],
        ),
      ),
    );
  }
}
