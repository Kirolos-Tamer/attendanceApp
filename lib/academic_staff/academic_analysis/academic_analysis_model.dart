import '/components/academic_navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'academic_analysis_widget.dart' show AcademicAnalysisWidget;
import 'package:flutter/material.dart';

class AcademicAnalysisModel extends FlutterFlowModel<AcademicAnalysisWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for AcademicNavbar component.
  late AcademicNavbarModel academicNavbarModel;

  @override
  void initState(BuildContext context) {
    academicNavbarModel = createModel(context, () => AcademicNavbarModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    academicNavbarModel.dispose();
  }
}
