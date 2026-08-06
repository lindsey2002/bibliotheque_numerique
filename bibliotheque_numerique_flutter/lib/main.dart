import 'package:bibliotheque_numerique_client/bibliotheque_numerique_client.dart';
import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'features/home/presentation/screens/public_home_screen.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';
// import 'package:serverpod_auth_idp_flutter/serverpod_auth_idp_flutter.dart'; // ← désactivé temporairement

late final Client client;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
  _initServerpod();
}

void _initServerpod() async {
  try {
    final serverUrl = await getServerUrl();
    client = Client(serverUrl)
      ..connectivityMonitor = FlutterConnectivityMonitor();
      // ..authSessionManager = FlutterAuthSessionManager(); // ← désactivé temporairement
    // await client.auth.initialize(); // ← désactivé temporairement
  } catch (e) {
    debugPrint('Serverpod non disponible (normal en phase design) : $e');
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Orobity',
      theme: AppTheme.theme,
      home: const PublicHomeScreen(),
    );
  }
}