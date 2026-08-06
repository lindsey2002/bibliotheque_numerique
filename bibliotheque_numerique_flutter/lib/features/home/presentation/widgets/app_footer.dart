import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 48),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1400),
          child: Wrap(
            alignment: WrapAlignment.spaceBetween,
            runSpacing: 16,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.nightlight_round, size: 16, color: AppColors.accent),
                  const SizedBox(width: 8),
                  Text('Orobity', style: textTheme.bodyMedium?.copyWith(color: AppColors.textPrimary)),
                ],
              ),
              Wrap(
                spacing: 24,
                children: [
                  Text('À propos', style: textTheme.bodyMedium),
                  Text('Confidentialité', style: textTheme.bodyMedium),
                  Text("Conditions d'utilisation", style: textTheme.bodyMedium),
                  Text('Contact', style: textTheme.bodyMedium),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}