import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class CategoryChip extends StatelessWidget {
  const CategoryChip({super.key, required this.label, this.onTap});

  final String label;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 11),
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: AppColors.border, width: 0.5),
        ),
        child: Text(label, style: Theme.of(context).textTheme.bodyLarge),
      ),
    );
  }
}