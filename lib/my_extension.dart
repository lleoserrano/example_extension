import 'package:flutter/material.dart';

final translate = {
  'HELLO': 'Olá',
  'CLICK_HERE': 'Clique aqui.',
  'AS_ERROR': 'Desculpe, ocorreu um erro.'
};

extension Translate on String {
  String get tr => translate.containsKey(this) ? translate[this]! : this;
}

extension Sizes on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
  double get aspectRatio => MediaQuery.of(this).size.aspectRatio;
  double get longestSide => MediaQuery.of(this).size.longestSide;
  double get shortestSide => MediaQuery.of(this).size.shortestSide;

  void showMySnackBarError() => ScaffoldMessenger.of(this).showSnackBar(
        SnackBar(
          content: Text('AS_ERROR'.tr),
          backgroundColor: Colors.red[900],
        ),
      );
}
