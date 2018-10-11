import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import "package:scope_demo/ScopeManage.dart";
import 'package:scope_demo/Home.dart';
import 'Details.dart';
import "Cart.dart";
void main(){
  runApp(Main());
}

class Main extends StatelessWidget{

  final routes = <String,WidgetBuilder>{
    Home.route:(BuildContext context)=>Home(),
    Details.route:(BuildContext context)=>Details(),
    Cart.route :(BuildContext context)=>Cart()
  };

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ScopedModel<AppModel>(
      model: AppModel(),
      child: MaterialApp(
        home: Home(),
        routes: routes,
        theme: ThemeData(
            primaryColor: Colors.white
        ),
      ),
    );
  }
}


