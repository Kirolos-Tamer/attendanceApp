import '/components/student_navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'student_q_r_widget.dart' show StudentQRWidget;
import 'package:flutter/material.dart';

class StudentQRModel extends FlutterFlowModel<StudentQRWidget> {
  ///  State fields for stateful widgets in this page.

  var qRCodeDecoded = '';
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
