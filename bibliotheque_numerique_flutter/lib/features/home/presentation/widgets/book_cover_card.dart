import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

/// Carte livre affichée dans les carousels/grilles.
/// Cadre uniforme (AppColors.surface) autour d'une image de couverture.
/// Actuellement l'image est une photo temporaire (picsum) le temps que les
/// vraies couvertures soient disponibles : remplacer l'URL par
/// `coverImageUrl` (asset ou vraie URL) le moment venu.
class BookCoverCard extends StatelessWidget {
  const BookCoverCard({
    super.key,
    required this.title,
    required this.author,
    this.width = 210,
    this.coverHeight = 300,
    this.onTap,
  });

  final String title;
  final String author;
  final double width;
  final double coverHeight;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: width,
              height: coverHeight,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: AppColors.surface,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.border, width: 1),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.network(
                  'https://picsum.photos/seed/${title.hashCode}/400/560',
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, progress) =>
                      progress == null ? child : const SizedBox.expand(),
                  errorBuilder: (context, error, stackTrace) => const Center(
                    child: Icon(Icons.menu_book_outlined, size: 28, color: AppColors.textSecondary),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 2),
            Text(
              author,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}