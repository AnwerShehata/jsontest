import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:stacked/stacked.dart';
import 'Home_Provider.dart';
import './User.dart';


class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeProvider>.reactive(
      onModelReady: (model) => model.inisial(),
      viewModelBuilder: () => HomeProvider(),
      builder: (_,model,__)=> Scaffold(


        appBar: AppBar(
          elevation: 0,
          title: Text("${model?.data?.data?.firstName}"),
        ),



        body: Center(
          child: Column(
            children: <Widget>[
              new Text("${model?.data?.data?.firstName}"),
              new Text("${model?.data?.data?.lastName}"),
              Image(image: NetworkImage("${model?.data?.data?.avatar}"))
            ],
          ),
        ),



      ),
    );
  }
}
