import '/components/general_navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'general_profile_widget.dart' show GeneralProfileWidget;
import 'package:flutter/material.dart';

class GeneralProfileModel extends FlutterFlowModel<GeneralProfileWidget> {
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
