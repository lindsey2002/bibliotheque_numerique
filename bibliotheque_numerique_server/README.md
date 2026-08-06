# Bibliothèque Numérique — Serveur (Backend)

Backend de la plateforme de bibliothèque numérique interactive, développé avec [Serverpod](https://serverpod.dev) (Dart). Projet réalisé dans le cadre d'un mémoire de licence.

## Fonctionnalités principales

- Authentification par email/mot de passe via `serverpod_auth_idp`
- Trois profils utilisateurs : Lecteur, Auteur, Super Admin
- Catalogue de livres avec catégorie, langue, et mode audio (aucun / narration IA / ambiance sonore)
- Workflow de soumission et de validation éditoriale des ouvrages
- Abonnement freemium/premium avec essai gratuit de 7 jours
- Changement de statut gratuit ↔ payant avec accord de l'auteur
- Favoris, avis, suivi de lecture
- Calcul mensuel des versements aux auteurs, basé sur les lecteurs uniques
- Statistiques d'évolution de la fréquentation par ouvrage

## Stack technique

- **Langage** : Dart
- **Framework** : Serverpod 3.4.11
- **Base de données** : PostgreSQL
- **Authentification** : serverpod_auth_idp (email/mot de passe)
- **Documentation API** : OpenAPI/Swagger via `serverpod_swagger` *(sera générer une fois le backend finalisé)*

## Prérequis

- [Dart SDK](https://dart.dev/get-dart) (^3.8.0)
- [Serverpod CLI](https://docs.serverpod.dev/get-started/installation)
- Docker (pour PostgreSQL — Redis n'est pas utilisé dans ce projet)

## Installation et lancement

```bash
# Récupérer les dépendances
dart pub get

# Démarrer PostgreSQL (et les autres conteneurs nécessaires)
docker compose up --build --detach

# Générer le code à partir des modèles (.spy.yaml)
serverpod generate

# Appliquer les migrations à la base de données
dart bin/main.dart --apply-migrations
```

Le serveur démarre par défaut sur `http://localhost:8080`.

## Structure du projet

lib/src/
├── models/ # Définitions des entités (.spy.yaml)
├── endpoints/ # Points d'accès de l'API (logique métier)
├── generated/ # Code généré automatiquement — ne pas modifier
└── web/ # Routes web statiques (page d'accueil par défaut)
migrations/ # Historique des migrations de base de données

## Endpoints principaux

| Endpoint | Rôle |
|---|---|
| `ProfilEndpoint` | Création de profil Lecteur/Auteur après authentification |
| `LivreEndpoint` | Soumission et consultation du catalogue |
| `DecisionEndpoint` | Validation/rejet éditorial (Super Admin) |
| `AbonnementEndpoint` / `PaiementEndpoint` | Gestion des abonnements et paiements |
| `ChangementStatutEndpoint` | Négociation gratuit ↔ payant |
| `AccesEndpoint` | Vérification des droits de lecture d'un ouvrage |
| `VersementEndpoint` | Calcul et consultation des versements mensuels des auteurs |
| `StatistiquesEndpoint` | Évolution mensuelle de la fréquentation d'un livre |
| `ConfigurationEndpoint` | Paramétrage des tarifs et taux de commission (Super Admin) |

## État d'avancement

- ✅ Modélisation des données (14 entités)
- ✅ Endpoints backend
- ⏳ Documentation Swagger/OpenAPI (à faire une fois le backend finalisé)
- ⏳ Client Flutter (à venir)

## Contexte académique

Projet réalisé dans le cadre d'un mémoire de licence portant sur la conception d'une plateforme de gestion de bibliothèque numérique.