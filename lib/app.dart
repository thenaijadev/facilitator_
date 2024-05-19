import 'package:facilitator/config/router/app_router.dart';
import 'package:facilitator/config/router/routes.dart';
import 'package:facilitator/config/theme/light_theme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    return GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: MaterialApp(
          theme: lightTheme(),
          debugShowCheckedModeBanner: false,
          // initialRoute: Routes.login,
          initialRoute: Routes.home,

          onGenerateRoute: appRouter.onGenerateRoute,
        ));
  }
}
