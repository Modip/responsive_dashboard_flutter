import 'package:dashbord/constant/constant.dart';
import 'package:dashbord/model/bar_graph_model.dart';
import 'package:dashbord/model/graph_model.dart';

class BarGraphData {
  final data = [
    const BarGraphModel(label: "activity level", color: kPeachColor, graph: [
      GraphModel(x: 0, y: 8),
      GraphModel(x: 1, y: 10),
      GraphModel(x: 2, y: 7),
      GraphModel(x: 3, y: 4),
      GraphModel(x: 4, y: 4),
      GraphModel(x: 5, y: 6),
    ]),
    const BarGraphModel(label: "activity level", color: kPrimaryColor, graph: [
      GraphModel(x: 0, y: 8),
      GraphModel(x: 1, y: 10),
      GraphModel(x: 2, y: 7),
      GraphModel(x: 3, y: 4),
      GraphModel(x: 4, y: 4),
      GraphModel(x: 5, y: 6),
    ]),
    const BarGraphModel(label: "activity level", color: kPinkColor, graph: [
      GraphModel(x: 0, y: 8),
      GraphModel(x: 1, y: 10),
      GraphModel(x: 2, y: 9),
      GraphModel(x: 3, y: 4),
      GraphModel(x: 4, y: 6),
      GraphModel(x: 5, y: 7),
    ]),
  ];
  final label = ["M", "T", "W", "T", "F", "S", "S"];
}

