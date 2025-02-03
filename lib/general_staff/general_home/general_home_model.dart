import '/components/general_navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'general_home_widget.dart' show GeneralHomeWidget;
import 'package:flutter/material.dart';

class GeneralHomeModel extends FlutterFlowModel<GeneralHomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for GeneralNavbar component.
  late GeneralNavbarModel generalNavbarModel;

  @override
  void initState(BuildContext context) {
    generalNavbarModel = createModel(context, () => GeneralNavbarModel());
  }

  @override
  void dispose() {
    generalNavbarModel.dispose();
  }
}
