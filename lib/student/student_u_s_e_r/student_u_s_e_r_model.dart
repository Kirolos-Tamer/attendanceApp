import '/components/student_navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'student_u_s_e_r_widget.dart' show StudentUSERWidget;
import 'package:flutter/material.dart';

class StudentUSERModel extends FlutterFlowModel<StudentUSERWidget> {
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
