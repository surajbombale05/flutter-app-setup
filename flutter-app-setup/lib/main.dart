import 'package:flutter/material.dart';

import 'app_config.dart';
import 'const/api_end_points.dart';
import 'model/env_global.dart';

void main({String? env}) async {
  WidgetsFlutterBinding.ensureInitialized();
  final appConfig = await AppConfig().forEnvironment(env);
  runApp(MyApp(config: appConfig));
}

late ApiEndpoints apiEndpoints;

class MyApp extends StatefulWidget {
  const MyApp({required this.config, super.key});
  final ApiBaseUrlModel config;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    apiEndpoints = ApiEndpoints(apiBaseUrlModel: widget.config);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Legel Advisor',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Text("data"),
    );
  }
}
