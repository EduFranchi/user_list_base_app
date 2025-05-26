import 'package:flutter/material.dart';
import 'package:user_list_micro_app_user_list/user_list_micro_app_user_list.dart';
import 'package:user_list_micro_core/app/base_app.dart';
import 'package:user_list_micro_core/app/micro_app.dart';
import 'package:user_list_micro_core/app/micro_core_utils.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget with BaseApp {
  MyApp({super.key}) {
    super.registerInjections();
    super.registerRoutes();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User List',
      theme: ThemeData.dark(),
      navigatorKey: navigatorKey,
      onGenerateRoute: super.generateRoute,
      initialRoute: '/home',
    );
  }

  @override
  Map<String, WidgetBuilderArgs> get baseRoutes => {};

  @override
  List<MicroApp> get microApps => [UserListMicroAppUserListResolver()];
}
