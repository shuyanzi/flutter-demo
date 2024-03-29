import 'package:flutter/material.dart';
import 'package:flutter_firebase/event/locale.dart';
import 'package:flutter_firebase/store/index.dart'
    show Store, CounterModel, UserInfoModel;
import 'package:flutter_firebase/pages/second.dart';
import 'package:flutter_firebase/utils/common_utils.dart';
import 'package:flutter_firebase/utils/event_bus.dart';

class First extends StatelessWidget {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    print('first page rebuild');
    return Scaffold(
      appBar: AppBar(
        title: Text('first'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(CommonUtils.getLocale(context).appName),
            Store.connect<CounterModel>(builder: (context, snapshot, child) {
              return RaisedButton(
                child: Text('zh'),
                onPressed: () {
                  eventBus.fire(LocaleEvent(Locale('zh')));
                  snapshot.increment();
                },
              );
            }),
            Store.connect<CounterModel>(builder: (context, snapshot, child) {
              print('first page counter widget rebuild');
              return Text('${snapshot.count}');
            }),
            Store.connect<CounterModel>(builder: (context, snapshot, child) {
              return RaisedButton(
                child: Text('en'),
                onPressed: () {
                  eventBus.fire(LocaleEvent(Locale('en')));
                  snapshot.decrement();
                },
              );
            }),
            Store.connect<UserInfoModel>(builder: (context, snapshot, child) {
              print('first page name Widget rebuild');
              return Text('${Store.value<UserInfoModel>(context).name}');
            }),
            TextField(
              controller: controller,
            ),
            Store.connect<UserInfoModel>(builder: (context, snapshot, child) {
              return RaisedButton(
                child: Text('change name'),
                onPressed: () {
                  snapshot.setName(controller.text);
                },
              );
            })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Center(child: Icon(Icons.group_work)),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return Second();
          }));
          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
          //   return SecondPage();
          // }));
        },
      ),
    );
  }
}
