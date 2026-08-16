import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

final appRouter = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      path: '/login',
      name: 'login',
      builder: (context, state) => const Scaffold(
        body: Center(child: Text('Écran de connexion — à venir')),
      ),
    ),
    GoRoute(
      path: '/lecteur',
      name: 'lecteur-accueil',
      builder: (context, state) => const Scaffold(
        body: Center(child: Text('Espace Lecteur — à venir')),
      ),
    ),
    GoRoute(
      path: '/auteur',
      name: 'auteur-accueil',
      builder: (context, state) => const Scaffold(
        body: Center(child: Text('Espace Auteur — à venir')),
      ),
    ),
    GoRoute(
      path: '/admin',
      name: 'admin-accueil',
      builder: (context, state) => const Scaffold(
        body: Center(child: Text('Espace Admin — à venir')),
      ),
    ),
  ],
);