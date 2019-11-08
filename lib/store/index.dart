import 'package:flutter/material.dart' show BuildContext;
import 'package:provider/provider.dart' show ChangeNotifierProvider, Consumer, MultiProvider, Provider;
import 'model/index.dart' show CounterModel, UserInfoModel;
export 'model/index.dart';

class Store {
  static BuildContext context;

  static init({context, child}) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(builder: (_) => CounterModel()),
        ChangeNotifierProvider(builder: (_) => UserInfoModel()),
      ],
      child: child,
    );
  }

  static T value<T>(context) {
    return Provider.of(context);
  }

  static Consumer connect<T>({builder, child}) {
    return Consumer<T>(builder: builder, child: child);
  }

}
