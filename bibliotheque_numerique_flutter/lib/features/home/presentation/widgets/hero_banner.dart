import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class HeroBanner extends StatelessWidget {
  const HeroBanner({
    super.key,
    required this.imageUrl,
    required this.tag,
    required this.title,
    required this.description,
    this.onDiscoverTap,
    this.onMoreInfoTap,
  });

  final String imageUrl;
  final String tag;
  final String title;
  final String description;
  final VoidCallback? onDiscoverTap;
  final VoidCallback? onMoreInfoTap;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      height: 420,
      color: AppColors.background,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            imageUrl,
            fit: BoxFit.cover,
            errorBuilder: (_, __, ___) => Container(color: AppColors.surface),
          ),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xFF050A10), Color(0x00050A10)],
                stops: [0.05, 0.75],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 100,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Color(0xFF050A10), Color(0x00050A10)],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 64),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 620),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                      decoration: BoxDecoration(
                        color: AppColors.accent,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        tag.toUpperCase(),
                        style: textTheme.labelMedium?.copyWith(
                          color: AppColors.accentOn,
                          letterSpacing: 0.6,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(height: 18),
                    Text(title, style: textTheme.displayLarge),
                    const SizedBox(height: 14),
                    Text(
                      description,
                      style: textTheme.bodyLarge?.copyWith(color: const Color(0xFFC3CEDB)),
                    ),
                    const SizedBox(height: 28),
                    Row(
                      children: [
                        ElevatedButton.icon(
                          onPressed: onDiscoverTap,
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 34),
                            textStyle: textTheme.labelLarge?.copyWith(fontSize: 16),
                          ),
                          icon: const Icon(Icons.headphones, size: 20),
                          label: const Text('Découvrir'),
                        ),
                        const SizedBox(width: 14),
                        OutlinedButton(
                          onPressed: onMoreInfoTap,
                          style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 34),
                            textStyle: textTheme.labelLarge?.copyWith(fontSize: 16),
                          ),
                          child: const Text('En savoir plus'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}