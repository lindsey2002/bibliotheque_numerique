import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class CtaBanner extends StatelessWidget {
  const CtaBanner({super.key, this.onSignupTap});

  final VoidCallback? onSignupTap;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 56, horizontal: 24),
      decoration: const BoxDecoration(
        color: AppColors.surface,
        border: Border(
          top: BorderSide(color: AppColors.border, width: 1),
          bottom: BorderSide(color: AppColors.border, width: 1),
        ),
      ),
      child: Column(
        children: [
          Text(
            'Rejoignez la communauté',
            style: textTheme.displayMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          Text(
            'Des milliers d\'histoires à lire ou à écouter, où que vous soyez.',
            style: textTheme.bodyLarge?.copyWith(color: AppColors.textSecondary),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 28),
          ElevatedButton(
            onPressed: onSignupTap,
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 40),
            ),
            child: const Text("Créer un compte gratuitement"),
          ),
        ],
      ),
    );
  }
}