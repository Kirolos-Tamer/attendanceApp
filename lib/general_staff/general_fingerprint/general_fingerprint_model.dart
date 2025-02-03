import '/components/general_navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'general_fingerprint_widget.dart' show GeneralFingerprintWidget;
import 'package:flutter/material.dart';

class GeneralFingerprintModel
    extends FlutterFlowModel<GeneralFingerprintWidget> {
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
