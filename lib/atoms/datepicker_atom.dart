import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class DatePickerAtom extends StatefulWidget {
  const DatePickerAtom({super.key});

  static const routeName = '/date-picker';

  @override
  State<DatePickerAtom> createState() => _DatePickerAtomState();
}

class _DatePickerAtomState extends State<DatePickerAtom> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            SfDateRangePicker(
              selectionColor: Colors.red,
            ),
            SfDateRangePicker(
              enableMultiView: true,
            ),
            SfDateRangePicker(
              extendableRangeSelectionDirection:
                  ExtendableRangeSelectionDirection.forward,
              selectionMode: DateRangePickerSelectionMode.range,
              startRangeSelectionColor: Colors.red,
              endRangeSelectionColor: Colors.red,
              rangeSelectionColor: Colors.red[100],
              todayHighlightColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
