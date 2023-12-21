import 'package:dexef_task/config/routes/app_routes.dart';
import 'package:dexef_task/features/authentication/persentation/cubit/auth_cubit.dart';
import 'package:dexef_task/features/splash/persentation/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import 'injection_container.dart' as di;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.sl<AuthCubit>(),
      child: Sizer(builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            useMaterial3: false,
          ),
          home: const SplashScreen(),
          onGenerateRoute: AppRoutes.onGeneratedRoute,
        );
      }),
    );
  }
}
