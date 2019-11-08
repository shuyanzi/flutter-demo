import 'dart:async';
import 'package:flutter/material.dart';

class LocalizationsWrap extends StatefulWidget {
  final Widget child;

  LocalizationsWrap({Key key, this.child}) : super(key: key);

  @override
  State<LocalizationsWrap> createState() {
    return new _LocalizationsWrap();
  }
}

class _LocalizationsWrap extends State<LocalizationsWrap> {
  StreamSubscription _stream;

  @override
  void initState() {
    super.initState();
    // _stream = eventBus.on<HttpErrorEvent>().listen((event) {
    //   errorHandleFunction(context, event.code, event.message);
    // });
  }

  @override
  Widget build(BuildContext context) {
    return  Localizations.override(
        context: context,
        child: widget.child,
      );
    // return new StoreBuilder<VNState>(builder: (context, store) {
    //   ///通过 StoreBuilder 和 Localizations 实现实时多语言切换
    //   return new Localizations.override(
    //     context: context,
    //     locale: store.state.locale,
    //     child: widget.child,
    //   );
    // });
  }

  errorHandleFunction(BuildContext context, int code, String message) async {
    // switch (code) {
    //   case 401:
    //     /// token过期
    //     LocalStorage.get(Configs.TOKEN_KEY).then((String res) {
    //       if (res != null && res.isNotEmpty) {
    //         CommonUtils.clearUserInfo();
    //         ToastMaker.show(CommonUtils.getLocale(context).notLoggedIn);
    //         NavigatorUtils.goSignIn(context);
    //       }
    //     });
    //     break;
    //   case Code.NETWORK_ERROR:
    //     ToastMaker.show(CommonUtils.getLocale(context).networkError);
    //     break;
    //   default:
    //     ToastMaker.show(message.isNotEmpty
    //         ? message
    //         : CommonUtils.getLocale(context).serverError);
    //     break;
    // }
  }

  @override
  void dispose() {
    super.dispose();
    if (_stream != null) {
      _stream.cancel();
      _stream = null;
    }
  }
}
