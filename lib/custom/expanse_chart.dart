import 'package:bank_app/models/expenses.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as chart;

class ExpensesChart extends StatelessWidget {
  // final List<chart.Series> serialList;
  final List<chart.Series<Expenses,String>> seriesList;
  final bool? animate;

 const ExpensesChart(this.seriesList, {this.animate});

  @override
  Widget build(BuildContext context) {
    
    return Expanded(
      child: chart.PieChart<String>(
        seriesList,
        animate: animate,
        animationDuration: const Duration(seconds: 1),
        defaultRenderer: chart.ArcRendererConfig(
            arcWidth: 12,
            strokeWidthPx: 0,
            arcRendererDecorators: [
              chart.ArcLabelDecorator(
                labelPadding: 0,
                showLeaderLines: false,
                outsideLabelStyleSpec: chart.TextStyleSpec(
                    fontSize: 12, color: chart.MaterialPalette.white
        
        ),
              ),
            ],
            
            
            ),
            behaviors: [
              chart.DatumLegend(position: chart.BehaviorPosition.end,
              outsideJustification:chart.OutsideJustification.start,
              horizontalFirst: false,
              desiredMaxColumns: 1,
              cellPadding: EdgeInsets.only(right: 4,bottom: 4),
              entryTextStyle: chart.TextStyleSpec(
                    fontSize: 12, color: chart.MaterialPalette.white),
              ),
              
            ],
      ),
    );
  }
}
