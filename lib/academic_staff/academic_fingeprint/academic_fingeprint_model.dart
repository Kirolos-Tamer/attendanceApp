import '/components/academic_navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'academic_fingeprint_widget.dart' show AcademicFingeprintWidget;
import 'package:flutter/material.dart';

class AcademicFingeprintModel
    extends FlutterFlowModel<AcademicFingeprintWidget> {
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
