import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:okuru/src/src/utils/utils.dart';

class DailyReadingStatistics extends StatelessWidget {
  const DailyReadingStatistics({Key? key})
      : _lineData = const [
          30,
          50,
          130,
          400,
          500,
          300,
          100,
        ],
        super(key: key);

  final List<int> _lineData;

  // print(_lineData.lastWhere((element) => element.isOdd));
  int get getTheLargestNumberInTheLineDataList {
    return 500;
  }

  String createLeftTitles(double value) {
    switch (value.toInt()) {
      case 100:
        return '100';
      case 300:
        return '300';
      case 500:
        return 'Sayfa';
    }
    return '';
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.deviceSize.height / 4.5,
      width: context.deviceSize.width,
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0, bottom: 20, left: 20),
        child: LineChart(
          LineChartData(
            gridData: _gridData(),
            titlesData: _titlesData(),
            borderData: _borderData(),
            minX: 0,
            maxX: 7,
            minY: 0,
            maxY: getTheLargestNumberInTheLineDataList.toDouble(),
            lineBarsData: _lines,
          ),
        ),
      ),
    );
  }

  List<LineChartBarData> get _lines {
    return [
      line1(),
    ];
  }

  FlBorderData _borderData() => FlBorderData(show: false);

  FlTitlesData _titlesData() {
    return FlTitlesData(
      show: true,
      rightTitles: _invisibleTitles(),
      topTitles: _invisibleTitles(),
      bottomTitles: _invisibleTitles(),
      leftTitles: SideTitles(
        showTitles: true,
        interval: 1,
        getTextStyles: (context, value) => TextStyle(
          color: Colors.grey.shade400,
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
        getTitles: createLeftTitles,
        reservedSize: 50,
        margin: 20,
      ),
    );
  }

  SideTitles _invisibleTitles() => SideTitles(showTitles: false);

  FlGridData _gridData() {
    return FlGridData(
      horizontalInterval: 200,
      show: true,
      drawVerticalLine: false,
      getDrawingHorizontalLine: (value) {
        return FlLine(
          color: const Color(0xff37434d),
          strokeWidth: 1,
        );
      },
    );
  }

  LineChartBarData line1() {
    return LineChartBarData(
      spots: _lineData.map((data) {
        double indexOfData = double.parse(_lineData.indexOf(data).toString());
        return FlSpot(indexOfData, data.toDouble());
      }).toList(),
      isCurved: false,
      colors: [Colors.red],
      barWidth: 2,
      isStrokeCapRound: true,
      dotData: FlDotData(
        getDotPainter: (p0, p1, p2, p3) {
          return FlDotCirclePainter(
              color: Colors.grey.shade900,
              radius: 3,
              strokeColor: Colors.red,
              strokeWidth: 1);
        },
        show: true,
      ),
      belowBarData: BarAreaData(
        gradientFrom: const Offset(0, 0),
        gradientTo: const Offset(0, 0.8),
        show: true,
        colors: [Colors.red, Colors.transparent],
      ),
    );
  }
}
