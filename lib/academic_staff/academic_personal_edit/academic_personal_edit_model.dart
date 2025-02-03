import '/flutter_flow/flutter_flow_util.dart';
import 'academic_personal_edit_widget.dart' show AcademicPersonalEditWidget;
import 'package:flutter/material.dart';

class AcademicPersonalEditModel
    extends FlutterFlowModel<AcademicPersonalEditWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Name widget.
  FocusNode? nameFocusNode1;
  TextEditingController? nameTextController1;
  String? Function(BuildContext, String?)? nameTextController1Validator;
  // State field(s) for Name widget.
  FocusNode? nameFocusNode2;
  TextEditingController? nameTextController2;
  String? Function(BuildContext, String?)? nameTextController2Validator;
  // State field(s) for Email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for Phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneTextController;
  String? Function(BuildContext, String?)? phoneTextControllerValidator;
  // State field(s) for AcademicID widget.
  FocusNode? academicIDFocusNode;
  TextEditingController? academicIDTextController;
  String? Function(BuildContext, String?)? academicIDTextControllerValidator;
  // State field(s) for Faculty widget.
  FocusNode? facultyFocusNode;
  TextEditingController? facultyTextController;
  String? Function(BuildContext, String?)? facultyTextControllerValidator;
  // State field(s) for Level widget.
  FocusNode? levelFocusNode;
  TextEditingController? levelTextController;
  String? Function(BuildContext, String?)? levelTextControllerValidator;
  // State field(s) for Program widget.
  FocusNode? programFocusNode1;
  TextEditingController? programTextController1;
  String? Function(BuildContext, String?)? programTextController1Validator;
  // State field(s) for Program widget.
  FocusNode? programFocusNode2;
  TextEditingController? programTextController2;
  String? Function(BuildContext, String?)? programTextController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nameFocusNode1?.dispose();
    nameTextController1?.dispose();

    nameFocusNode2?.dispose();
    nameTextController2?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    phoneFocusNode?.dispose();
    phoneTextController?.dispose();

    academicIDFocusNode?.dispose();
    academicIDTextController?.dispose();

    facultyFocusNode?.dispose();
    facultyTextController?.dispose();

    levelFocusNode?.dispose();
    levelTextController?.dispose();

    programFocusNode1?.dispose();
    programTextController1?.dispose();

    programFocusNode2?.dispose();
    programTextController2?.dispose();
  }
}
