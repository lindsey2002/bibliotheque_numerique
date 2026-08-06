import 'package:flutter/material.dart';
import '../widgets/app_footer.dart';
import '../widgets/author_avatar.dart';
import '../widgets/book_cover_card.dart';
import '../widgets/category_chip.dart';
import '../widgets/cta_banner.dart';
import '../widgets/hero_banner.dart';
import '../widgets/public_navbar.dart';

class _BookPreview {
  const _BookPreview(this.title, this.author);
  final String title;
  final String author;
}

/// Page d'accueil publique, visible avant connexion.
/// Cliquer sur un livre ou une action de lecture redirige vers Login/Signup
/// (TODO: brancher la navigation une fois l'écran créé).
class PublicHomeScreen extends StatelessWidget {
  const PublicHomeScreen({super.key});

  static const _newArrivals = [
    _BookPreview('Le silence des étoiles', 'Amara Touré'),
    _BookPreview('Ombres de Dakar', 'Cheikh Ndiaye'),
    _BookPreview("Vers l'aube", 'Fatou Sarr'),
    _BookPreview('La traversée', 'Moussa Diop'),
    _BookPreview('Les veilleurs', 'Aïda Fall'),
    _BookPreview('Murmures nocturnes', 'Ibrahima Ba'),
  ];

  static const _trending = [
    _BookPreview('Le dernier rivage', 'Sokhna Mbaye'),
    _BookPreview("L'héritage oublié", 'Omar Sy Diallo'),
    _BookPreview('Racines de sable', 'Khady Diouf'),
    _BookPreview('Le pacte des ombres', 'Mamadou Kane'),
    _BookPreview('Saisons brûlantes', 'Awa Cissé'),
    _BookPreview('Le chant des baobabs', 'Youssou Faye'),
  ];

  static const _authors = [
    'Amara Touré',
    'Cheikh Ndiaye',
    'Fatou Sarr',
    'Moussa Diop',
    'Aïda Fall',
    'Sokhna Mbaye',
  ];

  static const _categories = ['Action', 'Audiobook', 'Catalogue', 'Documentaires', 'Drame'];

  void _goToLogin(BuildContext context) {
    // TODO: Navigator.push vers LoginSignupScreen une fois créé.
  }

  Widget _bookRow(BuildContext context, List<_BookPreview> books) {
    return SizedBox(
      height: 390,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: books.length,
        separatorBuilder: (_, __) => const SizedBox(width: 24),
        itemBuilder: (context, index) {
          final book = books[index];
          return BookCoverCard(
            title: book.title,
            author: book.author,
            onTap: () => _goToLogin(context),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            PublicNavbar(
              onLoginTap: () => _goToLogin(context),
              onCatalogTap: () {},
              onCategoriesTap: () {},
              onAuthorsTap: () {},
              onSearchSubmitted: (query) {},
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeroBanner(
                      imageUrl:
                          'https://images.unsplash.com/photo-1507842217343-583bb7270b66?w=1200&q=80',
                      tag: 'Nouveauté de la semaine',
                      title: 'Le silence des étoiles',
                      description:
                          'Une histoire murmurée à la nuit tombée, disponible en lecture '
                          'ou en écoute avec narration IA.',
                      onDiscoverTap: () => _goToLogin(context),
                      onMoreInfoTap: () => _goToLogin(context),
                    ),
                    Center(
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 1400),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 48),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 48),
                              Text('Nouveaux arrivages', style: textTheme.headlineSmall),
                              const SizedBox(height: 20),
                              _bookRow(context, _newArrivals),

                              const SizedBox(height: 48),
                              Text('Tendances de la semaine', style: textTheme.headlineSmall),
                              const SizedBox(height: 20),
                              _bookRow(context, _trending),

                              const SizedBox(height: 48),
                              Text('Auteurs à la une', style: textTheme.headlineSmall),
                              const SizedBox(height: 20),
                              SizedBox(
                                height: 130,
                                child: ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: _authors.length,
                                  separatorBuilder: (_, __) => const SizedBox(width: 20),
                                  itemBuilder: (context, index) => AuthorAvatar(
                                    name: _authors[index],
                                    onTap: () => _goToLogin(context),
                                  ),
                                ),
                              ),

                              const SizedBox(height: 48),
                              Text('Catégories populaires', style: textTheme.headlineSmall),
                              const SizedBox(height: 20),
                              Wrap(
                                spacing: 12,
                                runSpacing: 12,
                                children: _categories
                                    .map((c) => CategoryChip(label: c, onTap: () {}))
                                    .toList(),
                              ),
                              const SizedBox(height: 64),
                            ],
                          ),
                        ),
                      ),
                    ),
                    CtaBanner(onSignupTap: () => _goToLogin(context)),
                    const AppFooter(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}