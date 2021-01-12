import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';



class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLoading=true;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(

      body: SafeArea(
        child: Stack(
          children: <Widget>[
            WebView(

              initialUrl: 'https://wagonbasket.com',
              javascriptMode: JavascriptMode.unrestricted,
              onPageFinished: (finish) {
                setState(() {
                  isLoading = false;
                });
              },
            ),
            isLoading ? Stack(
              children:[
                Container(color: Colors.black),
                Center(child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/splash.png",width: size.width * 0.75,),
                  SizedBox(height: 70,),
                  Align(alignment: Alignment.bottomCenter,child: Padding(
                    padding: const EdgeInsets.only(left: 100,right: 100),
                    child: LinearProgressIndicator(),
                  ))
                  ],
                ),
                ),
              ],)
                : Stack(),
          ],
        ),
      ),
    );
  }
}
