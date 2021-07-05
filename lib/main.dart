import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_application_1/redux/app_state.dart';
import 'package:flutter_application_1/redux/middlewares.dart';
import 'package:flutter_application_1/redux/reducer.dart';
import 'package:flutter_application_1/ui/page_1.dart';
import 'package:redux/redux.dart';

final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  final Store store = Store<AppState>(
      reducer,
      initialState: AppState.create(),
      middleware: AppMiddleware(navigatorKey: navigatorKey).getMiddlewares()
  );

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        navigatorKey: navigatorKey,
        title: 'Redux',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: Page1(),
      ),
    );
  }
}