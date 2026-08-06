import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class PublicNavbar extends StatefulWidget {
  const PublicNavbar({
    super.key,
    this.onLoginTap,
    this.onCatalogTap,
    this.onCategoriesTap,
    this.onAuthorsTap,
    this.onSearchSubmitted,
  });

  final VoidCallback? onLoginTap;
  final VoidCallback? onCatalogTap;
  final VoidCallback? onCategoriesTap;
  final VoidCallback? onAuthorsTap;
  final ValueChanged<String>? onSearchSubmitted;

  @override
  State<PublicNavbar> createState() => _PublicNavbarState();
}

class _PublicNavbarState extends State<PublicNavbar> {
  bool _searchOpen = false;
  final _searchController = TextEditingController();
  final _searchFocusNode = FocusNode();

  void _toggleSearch() {
    setState(() => _searchOpen = !_searchOpen);
    if (_searchOpen) {
      Future.delayed(const Duration(milliseconds: 220), () {
        if (mounted) _searchFocusNode.requestFocus();
      });
    }
  }

  @override
  void dispose() {
    _searchController.dispose();
    _searchFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: AppColors.border, width: 0.5)),
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1400),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 18),
            child: Row(
              children: [
                // Logo
                const Icon(Icons.nightlight_round, size: 22, color: AppColors.accent),
                const SizedBox(width: 10),
                Text('Orobity', style: textTheme.headlineSmall?.copyWith(fontSize: 20)),
                const SizedBox(width: 56),
                _NavLink(label: 'Catalogue', onTap: widget.onCatalogTap),
                const SizedBox(width: 32),
                _NavLink(label: 'Catégories', onTap: widget.onCategoriesTap),
                const SizedBox(width: 32),
                _NavLink(label: 'Auteurs', onTap: widget.onAuthorsTap),
                const Spacer(),
                // Recherche : largeur fixe animée, pas d'Expanded imbriqué
                // (évite les erreurs de contraintes non bornées).
                GestureDetector(
                  onTap: _searchOpen ? null : _toggleSearch,
                  child: Icon(
                    Icons.search,
                    size: 20,
                    color: _searchOpen ? AppColors.textPrimary : AppColors.textSecondary,
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 220),
                  curve: Curves.easeInOut,
                  width: _searchOpen ? 220 : 0,
                  margin: EdgeInsets.only(left: _searchOpen ? 10 : 0),
                  clipBehavior: Clip.hardEdge,
                  decoration: const BoxDecoration(),
                  child: SizedBox(
                    height: 32,
                    child: TextField(
                      controller: _searchController,
                      focusNode: _searchFocusNode,
                      onSubmitted: widget.onSearchSubmitted,
                      onTapOutside: (_) {
                        if (_searchController.text.isEmpty) {
                          setState(() => _searchOpen = false);
                        }
                      },
                      style: textTheme.bodyMedium?.copyWith(color: AppColors.textPrimary),
                      decoration: const InputDecoration(
                        isDense: true,
                        filled: false,
                        hintText: 'Rechercher...',
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.border, width: 0.5),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.border, width: 0.5),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.accent, width: 1),
                        ),
                        contentPadding: EdgeInsets.only(bottom: 4),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 32),
                _NavLink(label: 'Se connecter', onTap: widget.onLoginTap, emphasized: true),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _NavLink extends StatefulWidget {
  const _NavLink({required this.label, this.onTap, this.emphasized = false});

  final String label;
  final VoidCallback? onTap;
  final bool emphasized;

  @override
  State<_NavLink> createState() => _NavLinkState();
}

class _NavLinkState extends State<_NavLink> {
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    final baseColor =
        widget.emphasized ? AppColors.textPrimary : AppColors.textSecondary;

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _hovering = true),
      onExit: (_) => setState(() => _hovering = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 180),
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: _hovering ? AppColors.accent : baseColor,
                    fontWeight: widget.emphasized ? FontWeight.w500 : FontWeight.w400,
                  ),
              child: Text(widget.label),
            ),
            const SizedBox(height: 3),
            AnimatedContainer(
              duration: const Duration(milliseconds: 180),
              height: 2,
              width: _hovering ? 16 : 0,
              decoration: BoxDecoration(
                color: AppColors.accent,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}