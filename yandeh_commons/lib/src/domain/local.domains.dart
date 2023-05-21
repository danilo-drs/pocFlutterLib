import 'package:flutter/material.dart';

class LocalModel with ChangeNotifier {
  final _state = <String, dynamic>{};

  get data => _state;

  void setDomainData(String name, dynamic value) {
    _state[name] = value;
    notifyListeners();
  }
}

class LocalDomais extends InheritedNotifier<LocalModel> {
  const LocalDomais({
    Key? key,
    required LocalModel localModel,
    required Widget child,
  }) : super(key: key, notifier: localModel, child: child);

  static LocalModel of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<LocalDomais>()!.notifier!;
  }
}
