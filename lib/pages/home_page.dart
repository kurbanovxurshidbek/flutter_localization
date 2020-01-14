import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/helpers/app_local.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool _isEnglish = false;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    var data = EasyLocalizationProvider.of(context).data;

    return EasyLocalizationProvider(
      data: data,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(AppLocal.get(context, 'title')),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                Text(AppLocal.get(context, 'content')),
                FlatButton(
                  color: Colors.blue,
                  onPressed: () {
                    if(_isEnglish){
                      AppLocal.change(context, 'ko', 'KO');
                    }else{
                      AppLocal.change(context, 'en', 'US');
                    }
                    setState(() {
                      _isEnglish = !_isEnglish;
                    });
                  },
                  child: _isEnglish ? Text('Change to Korean',style: TextStyle(color: Colors.white),) : Text('Change to English',style: TextStyle(color: Colors.white),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
