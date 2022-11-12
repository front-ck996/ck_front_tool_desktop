import 'package:flutter/material.dart';

class AppBasicContainer<T> extends StatelessWidget {
  Future<T>? future;
  final Widget Function(BuildContext context, BoxConstraints constraints, AsyncSnapshot<T> snapshot) builder;
  AppBasicContainer({Key? key, this.future, required this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints){
      future ??= Future.delayed(const Duration(microseconds: 0));
      return FutureBuilder(
        future: future,
        builder: (BuildContext context, AsyncSnapshot<T> snapshot){
          return builder(context, constraints, snapshot);
        }
      );
    });
  }
}
