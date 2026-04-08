import 'package:flutter/material.dart';
import 'package:todolist/widgets/metric_badge.dart';

class HeroScreen extends StatelessWidget {
  const HeroScreen({super.key});

  @override
  Widget build(context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: Color(0xFF5F33E1),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.08),
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Text(
              'Sunday October 30',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 18),
          const Text(
            'Your efficiency grows\nwith consistency.',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              height: 1.2,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 18),
          Row(
            children: [
              MetricBadge(
                value: '85%',
                label: 'Done',
                color: const Color(0xFF8E7CFF),
              ),
              const SizedBox(width: 12),
              MetricBadge(
                value: '12',
                label: 'Tasks',
                color: const Color(0xFFFFB867),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
