import '/components/student_navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'student_h_o_m_e_widget.dart' show StudentHOMEWidget;
import 'package:flutter/material.dart';

class StudentHOMEModel extends FlutterFlowModel<StudentHOMEWidget> {
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
