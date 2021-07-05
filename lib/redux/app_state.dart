import 'dart:collection';

import 'package:flutter_application_1/redux/destination.dart';

class AppState {

  final Queue<Destination> activePages;

  AppState({required this.activePages});

  factory AppState.create() => AppState(
    activePages: new Queue()..add(Destination.PAGE_1)
  );

  AppState copy({
    required Queue<Destination>? activePages
  }) => AppState(
      activePages: activePages ?? this.activePages
  );

}