import 'package:flutter/foundation.dart';

class CampsModel {
  final String? id;
  final String? upcoming;
  final String? title;
  final double? avg;
  final double? reqAmount;
  final double? raisedAmount;

  CampsModel({
    @required this.id,
    @required this.upcoming,
    @required this.title,
    @required this.avg,
    @required this.reqAmount,
    @required this.raisedAmount,
  });
}
