import 'package:cofood/src/AppRoot.dart';
import 'package:flutter/material.dart';

import 'core/utils/sp_helper/cache_helper.dart';
import 'services/dio_helper.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesHelper.init();
  DioHelper.init();
  runApp(const AppRoot());
}