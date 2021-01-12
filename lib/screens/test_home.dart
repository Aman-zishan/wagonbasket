import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'dart:async';




class TestScreen extends StatefulWidget {
  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  final String selectedUrl = "https://wagonbasket.com";


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(

      body:  SafeArea(

        child: WebviewScaffold(
          url: selectedUrl,
          withZoom: true,
          withLocalStorage: true,
          clearCookies: false,
          clearCache: true,
          appCacheEnabled: true,
          hidden: true,
          initialChild:
              Container(
                  color: Color.fromRGBO(25, 45, 84, 1),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Image.asset("assets/splash.png"),
                        )
              ),
              ),
        ),

      ),
    );
  }

}

