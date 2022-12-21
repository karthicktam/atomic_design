import 'package:flutter/material.dart';

class RangeSliderAtom extends StatefulWidget {
  const RangeSliderAtom({super.key});

  static const routeName = '/range-slider';

  @override
  State<RangeSliderAtom> createState() => _RangeSliderAtomState();
}

class _RangeSliderAtomState extends State<RangeSliderAtom> {
  RangeValues _currentRangeValues = const RangeValues(0, 10);
  double _currentSliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RangeSlider(
          values: _currentRangeValues,
          onChanged: (RangeValues values) {
            setState(() {
              _currentRangeValues = values;
            });
          },
          labels: RangeLabels(
            _currentRangeValues.start.toString(),
            _currentRangeValues.end.toString(),
          ),
          divisions: 10,
          min: 0,
          max: 10,
        ),
        Slider(
          value: _currentSliderValue,
          max: 10.0,
          min: 0.0,
          divisions: 100,
          label: _currentSliderValue.toStringAsFixed(2),
          onChanged: (double value) {
            setState(() {
              _currentSliderValue = value;
            });
          },
        ),
      ],
    );
  }
}
