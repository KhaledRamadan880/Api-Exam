import 'package:api_exam/app/app.dart';
import 'package:api_exam/core/database/services/service_locator.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  serviceInit();
  runApp(const MyApp());
}
