import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';
import 'package:serverpod_auth_idp_flutter/serverpod_auth_idp_flutter.dart';
import 'package:bibliotheque_numerique_client/bibliotheque_numerique_client.dart';

import 'core/theme/app_theme.dart';
import 'core/theme/theme_controller.dart';
import 'router/app_router.dart';

late Client client;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  const serverUrl = 'http://localhost:8080/';

  client = Client(serverUrl)
    ..connectivityMonitor = FlutterConnectivityMonitor()
    ..authSessionManager = FlutterAuthSessionManager();

  await client.auth.initialize();

  runApp(const BibliothequeApp());
}

class BibliothequeApp extends StatelessWidget {
  const BibliothequeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeController(),
      child: Consumer<ThemeController>(
        builder: (context, themeController, _) {
          return MaterialApp.router(
            title: 'Bibliothèque Numérique',
            debugShowCheckedModeBanner: false,
            theme: AppTheme.light,
            darkTheme: AppTheme.dark,
            themeMode: themeController.themeMode,
            routerConfig: appRouter,
          );
        },
      ),
    );
  }   //flutter pub get , flutter run 
}