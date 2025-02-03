import '/components/student_navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'student_q_r_scaned_widget.dart' show StudentQRScanedWidget;
import 'package:flutter/material.dart';

class StudentQRScanedModel extends FlutterFlowModel<StudentQRScanedWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for StudentNavbar component.
  late StudentNavbarModel studentNavbarModel;

  @override
  void initState(BuildContext context) {
    studentNavbarModel = createModel(context, () => StudentNavbarModel());
  }

  @override
  void dispose() {
    studentNavbarModel.dispose();
  }
}
