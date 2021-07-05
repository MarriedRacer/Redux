  
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_application_1/redux/actions.dart';

class Page3 extends StatelessWidget {

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
          title: Text("Redux paginita 3 (about)"),
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text("Paginita 2 uwu"),
                RaisedButton(
                  child: Icon(Icons.arrow_back),
                  onPressed: () => StoreProvider.of(context).dispatch(NavigateBack())
                ),
                Image.asset('lib/assets/183379.jpg',width: 300.0,height: 120.0),
                Text("183379 Cruz Vilchis José Erick"),
                Image.asset('lib/assets/183406.jpg',width: 300.0,height: 120.0),
                Text("183406 Rivadeneyra Robles Andy Alí"),
                Image.asset('lib/assets/183424.jpg',width: 300.0,height: 120.0),
                Text("183424 Medina Flores Zictcian de Jesús"),
                Image.asset('lib/assets/183475.jpg',width: 300.0,height: 120.0),
                Text("183475 González Toledo Anthony Eduardo"),                
              ],
            ),
          ),
        ),
      ),
    );
  }
}