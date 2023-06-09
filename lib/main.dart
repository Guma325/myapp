import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:myapp/pages/login_page.dart';
import 'package:myapp/repositories/summoner_repository.dart';
import 'package:myapp/services/auth_service.dart';
import 'package:myapp/services/notification_services.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';

void main() async {
  //runApp(const MeuApp());

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => AuthService()),
      ChangeNotifierProvider(create: (context) => SummonerRepository()),
      Provider(create: (context) => NotificationServices())
    ],
    child: const MeuApp(),
  ));
}

class MeuApp extends StatelessWidget {
  const MeuApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ProAnalyzer",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const LoginPage(),
    );
  }
}
