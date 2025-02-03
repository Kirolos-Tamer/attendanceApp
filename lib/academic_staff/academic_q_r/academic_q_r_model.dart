import '/components/academic_navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'academic_q_r_widget.dart' show AcademicQRWidget;
import 'package:flutter/material.dart';

class AcademicQRModel extends FlutterFlowModel<AcademicQRWidget> {
  ///  State fields for stateful widgets in this page.

  var qRCodeDecoded = '';
  // Model for AcademicNavbar component.
  late AcademicNavbarModel academicNavbarModel;

  @override
  void initState(BuildContext context) {
    academicNavbarModel = createModel(context, () => AcademicNavbarModel());
  }

  @override
  void dispose() {
    academicNavbarModel.dispose();
  }
}
