import 'package:flutter/material.dart';

class SectionTittle extends StatelessWidget {
  const SectionTittle({
    super.key,
    required this.tittle,
    required this.trailing,
  });
  final String tittle;
  final String trailing;
  @override
  Widget build(context) {
    return Row(
      children: [
        Text(
          tittle,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Color(0xFF17181D),
          ),
        ),

        const Spacer(),
        Text(
          trailing,
          style: const TextStyle(
            fontSize: 13,
            color: Color(0xFF7B8092),
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
