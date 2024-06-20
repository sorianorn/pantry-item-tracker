import 'package:flutter/material.dart';

class CarouselItemIndicator extends StatelessWidget {
  const CarouselItemIndicator({
    super.key,
    required this.indicatorNumber,
    required this.currentIndicatorNumber,
    required this.onIndicatorTapped,
  });

  final int indicatorNumber;
  final int currentIndicatorNumber;
  final double indicatorSize = 20;
  final Function(int) onIndicatorTapped;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: Iterable.generate(indicatorNumber).map((num) {
        return Container(
          padding: const EdgeInsets.all(3),
          child: Container(
            height: indicatorSize,
            width: indicatorSize,
            decoration: BoxDecoration(
              color: (num == currentIndicatorNumber)
                  ? Colors.grey
                  : Colors.blueGrey,
              shape: BoxShape.circle,
            ),
            child: GestureDetector(
              onTap: () => onIndicatorTapped(num),
            ),
          ),
        );
      }).toList(),
    );
  }
}
