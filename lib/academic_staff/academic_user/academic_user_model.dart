import '/components/academic_navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'academic_user_widget.dart' show AcademicUserWidget;
import 'package:flutter/material.dart';

class AcademicUserModel extends FlutterFlowModel<AcademicUserWidget> {
  ///  State fields for stateful widgets in this page.

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
