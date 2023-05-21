import 'package:flutter/material.dart';

class YandehModel with ChangeNotifier {
  final _state = <String, dynamic>{};

  get data => _state;

  void setDomainData(String name, dynamic value) {
    _state[name] = value;
    notifyListeners();
  }
}

class YandehDomais extends InheritedNotifier<YandehModel> {
  const YandehDomais({
    Key? key,
    required YandehModel yandehModel,
    required Widget child,
  }) : super(key: key, notifier: yandehModel, child: child);

  static YandehModel of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<YandehDomais>()!
        .notifier!;
  }
}
