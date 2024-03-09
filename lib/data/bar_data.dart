import 'package:dashbord/model/individual_bar_model.dart';

class BarData {
  final double sunAmount;
  final double monAmount;
  final double tueAmount;
  final double wedAmount;
  final double thuAmount;
  final double friAmount;
  final double satAmount;
  BarData({
    required this.sunAmount,
    required this.monAmount,
    required this.tueAmount,
    required this.wedAmount,
    required this.thuAmount,
    required this.friAmount,
    required this.satAmount,
  });

  List<IndividualBarModel> barData = [];

  void initializeBarData() {
    barData = [
      IndividualBarModel(x: 0, y: sunAmount),
      IndividualBarModel(x: 1, y: monAmount),
      IndividualBarModel(x: 2, y: tueAmount),
      IndividualBarModel(x: 3, y: wedAmount),
      IndividualBarModel(x: 4, y: thuAmount),
      IndividualBarModel(x: 5, y: friAmount),
      IndividualBarModel(x: 6, y: satAmount),
    ];
  }
}
