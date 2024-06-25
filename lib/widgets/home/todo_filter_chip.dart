import 'package:flutter/material.dart';

class TodoFilterChip extends StatelessWidget {
  final String filterName;
  final bool isSelected;

  const TodoFilterChip({
    required this.filterName,
    required this.isSelected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        color: getChipBg(),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),
        child: Text(
          filterName,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: getChipTextColor(),
          ),
        ),
      ),
    );
  }

  Color getChipBg() {
    return isSelected ? const Color.fromRGBO(252,237,172, 1) : Colors.black;
  }

  Color getChipTextColor() {
    return isSelected ? Colors.black : const Color.fromRGBO(252,237,172, 1);
  }
}