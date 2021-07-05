  
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_application_1/redux/actions.dart';
import 'package:flutter_application_1/redux/destination.dart';

class Page1 extends StatefulWidget {

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {

  Future<bool> onBackPressed(BuildContext context) {
    StoreProvider.of(context).dispatch(NavigateBack());
    return Future.value(false);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => onBackPressed(context),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("Redux paginita 1")
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text("Paginita 2 uwu"),
                RaisedButton(
                    child: Icon(Icons.navigate_next),
                    onPressed: () => StoreProvider.of(context).dispatch(NavigateToNext(destination: Destination.PAGE_2))
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}