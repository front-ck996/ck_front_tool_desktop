import 'package:flutter/material.dart';

class LoadingFitFill extends StatelessWidget {
  const LoadingFitFill({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(0, 0, 0, 0.46),
      child: const Center(child: CircularProgressIndicator(),),
    );
  }
}
// Color.fromRGBO(0, 0, 0, 0.46)