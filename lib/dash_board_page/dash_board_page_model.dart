import '/flutter_flow/flutter_flow_util.dart';
import 'dash_board_page_widget.dart' show DashBoardPageWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class DashBoardPageModel extends FlutterFlowModel<DashBoardPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController.dispose();
  }
}
