import 'package:dexef_task/core/utils/app_colors.dart';
import 'package:dexef_task/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart extends StatelessWidget {
  Chart({Key? key}) : super(key: key);

  final List<ChartData> chartData = [
    ChartData('M', 35),
    ChartData('T', 28),
    ChartData('W', 42),
    ChartData('T', 50),
    ChartData('F', 38),
    ChartData('S', 45),
    ChartData('S', 30),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 1.5.h),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Text.rich(
            TextSpan(
              children: <InlineSpan>[
                TextSpan(
                  text: "74  ",
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: AppStrings.salesInvoice,
                  style: TextStyle(
                    fontSize: 10.sp,
                    color: AppColors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
        SfCartesianChart(
          plotAreaBorderWidth: 0,
          primaryYAxis: const CategoryAxis(
            axisLine: AxisLine(width: 0),
            labelRotation: 0,
            majorGridLines: MajorGridLines(width: 0),
            majorTickLines: MajorTickLines(width: 0),
          ),
          primaryXAxis: const CategoryAxis(
            labelRotation: 0,
            majorGridLines: MajorGridLines(
              width: 0,
            ),
            majorTickLines: MajorTickLines(width: 0),
            axisLine: AxisLine(width: 0),
          ),
          legend: const Legend(isVisible: true),
          series: <ColumnSeries<ChartData, String>>[
            ColumnSeries<ChartData, String>(
              isVisibleInLegend: false,
              dataSource: chartData,
              xValueMapper: (ChartData data, int index) => '${data.day} $index',
              yValueMapper: (ChartData data, int index) => data.revenue,
              pointColorMapper: (ChartData data, int index) {
                if (data.revenue ==
                    chartData
                        .reduce((max, element) =>
                            element.revenue > max.revenue ? element : max)
                        .revenue) {
                  return Colors.red;
                } else {
                  return Colors.grey;
                }
              },
              borderRadius: BorderRadius.circular(5),
              dataLabelSettings: const DataLabelSettings(isVisible: true),
            ),
          ],
        ),
      ],
    );
  }
}

class ChartData {
  final String day;
  final double revenue;

  ChartData(this.day, this.revenue);
}
