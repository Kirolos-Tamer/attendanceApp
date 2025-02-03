import '/flutter_flow/flutter_flow_util.dart';
import 'student_pass_change_widget.dart' show StudentPassChangeWidget;
import 'package:flutter/material.dart';

class StudentPassChangeModel extends FlutterFlowModel<StudentPassChangeWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for password widget.
  FocusNode? passwordFocusNode1;
  TextEditingController? passwordTextController1;
  late bool passwordVisibility1;
  String? Function(BuildContext, String?)? passwordTextController1Validator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode2;
  TextEditingController? passwordTextController2;
  late bool passwordVisibility2;
  String? Function(BuildContext, String?)? passwordTextController2Validator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode3;
  TextEditingController? passwordTextController3;
  late bool passwordVisibility3;
  String? Function(BuildContext, String?)? passwordTextController3Validator;

  @override
  void initState(BuildContext context) {
    passwordVisibility1 = false;
    passwordVisibility2 = false;
    passwordVisibility3 = false;
  }

  @override
  void dispose() {
    passwordFocusNode1?.dispose();
    passwordTextController1?.dispose();

    passwordFocusNode2?.dispose();
    passwordTextController2?.dispose();

    passwordFocusNode3?.dispose();
    passwordTextController3?.dispose();
  }
}
