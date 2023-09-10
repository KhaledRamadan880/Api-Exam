import 'package:api_exam/core/database/services/service_locator.dart';
import 'package:api_exam/features/home/presentation/home_cubit/home_cubit.dart';
import 'package:api_exam/features/home/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(400, 800),
        builder: (context, child) {
          return BlocProvider(
            create: (context) => sl<HomeCubit>()..getAllCats(),
            child: const MaterialApp(
              debugShowCheckedModeBanner: false,
              home: HomeScreen(),
            ),
          );
        });
  }
}
