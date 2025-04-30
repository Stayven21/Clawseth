import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomLineChart extends StatelessWidget {
  final List<FlSpot> dataPoints;
  final String xAxisLabel;
  final String yAxisLabel;

  const CustomLineChart({
    Key? key,
    required this.dataPoints,
    this.xAxisLabel = '',
    this.yAxisLabel = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        backgroundColor: Colors.grey[850],
        gridData: FlGridData(
          show: true,
          getDrawingHorizontalLine: (value) => FlLine(
            color: Colors.white.withOpacity(0.2),
            strokeWidth: 1,
          ),
          getDrawingVerticalLine: (value) => FlLine(
            color: Colors.white.withOpacity(0.2),
            strokeWidth: 1,
          ),
        ),
        titlesData: FlTitlesData(
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 40,
              getTitlesWidget: (value, meta) {
                return Text(
                  '${value.toInt()}k',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                );
              },
            ),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) {
                switch (value.toInt()) {
                  case 0:
                    return Text('MAR', style: TextStyle(color: Colors.white));
                  case 3:
                    return Text('JUN', style: TextStyle(color: Colors.white));
                  case 6:
                    return Text('SEP', style: TextStyle(color: Colors.white));
                  default:
                    return Container();
                }
              },
            ),
          ),
        ),
        borderData: FlBorderData(
          show: true,
          border: Border.all(color: Colors.white.withOpacity(0.2), width: 1),
        ),
        lineBarsData: [
          LineChartBarData(
            spots: dataPoints,
            isCurved: true,
            color: Colors.cyanAccent,
            barWidth: 4,
            belowBarData: BarAreaData(
              show: true,
              gradient: LinearGradient(
                colors: [
                  Colors.cyanAccent.withOpacity(0.4),
                  Colors.greenAccent.withOpacity(0.1),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            dotData: FlDotData(
              show: true,
              getDotPainter: (spot, percent, barData, index) =>
                  FlDotCirclePainter(
                radius: 6,
                color: Colors.cyanAccent,
                strokeWidth: 2,
                strokeColor: Colors.black,
              ),
            ),
          ),
        ],
        lineTouchData: LineTouchData(
          touchTooltipData: LineTouchTooltipData(
            getTooltipColor: (spot) => Colors.blueGrey.withOpacity(0.8),
            tooltipBorder: BorderSide(color: Colors.white, width: 1),
            tooltipRoundedRadius: 8,
            getTooltipItems: (touchedSpots) {
              return touchedSpots.map((spot) {
                return LineTooltipItem(
                  '${spot.y}',
                  TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                );
              }).toList();
            },
          ),
          handleBuiltInTouches: true,
        ),
      ),
    );
  }
}
