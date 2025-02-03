import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'student_navbar_model.dart';
export 'student_navbar_model.dart';

class StudentNavbarWidget extends StatefulWidget {
  const StudentNavbarWidget({
    super.key,
    required this.homePage,
  });

  final String? homePage;

  @override
  State<StudentNavbarWidget> createState() => _StudentNavbarWidgetState();
}

class _StudentNavbarWidgetState extends State<StudentNavbarWidget> {
  late StudentNavbarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StudentNavbarModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120.0,
      decoration: const BoxDecoration(),
      child: Stack(
        alignment: const AlignmentDirectional(0.0, 1.0),
        children: [
          Container(
            width: double.infinity,
            height: 80.0,
            decoration: const BoxDecoration(),
            child: Stack(
              alignment: const AlignmentDirectional(0.0, 0.0),
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/Navbar2.png',
                    width: double.infinity,
                    height: 260.0,
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(50.0, 0.0, 50.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FlutterFlowIconButton(
                        borderRadius: 8.0,
                        buttonSize: 40.0,
                        icon: Icon(
                          Icons.house_rounded,
                          color: valueOrDefault<Color>(
                            widget.homePage == 'studentHome'
                                ? FlutterFlowTheme.of(context).primary
                                : FlutterFlowTheme.of(context).secondaryText,
                            FlutterFlowTheme.of(context).secondaryText,
                          ),
                          size: 27.0,
                        ),
                        onPressed: () async {
                          context.goNamed('StudentHOME');
                        },
                      ),
                      FlutterFlowIconButton(
                        borderRadius: 8.0,
                        buttonSize: 40.0,
                        icon: Icon(
                          Icons.person,
                          color: valueOrDefault<Color>(
                            widget.homePage == 'studentProfile'
                                ? FlutterFlowTheme.of(context).primary
                                : FlutterFlowTheme.of(context).secondaryText,
                            FlutterFlowTheme.of(context).secondaryText,
                          ),
                          size: 27.0,
                        ),
                        onPressed: () async {
                          context.pushNamed('StudentUSER');
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(0.0, -1.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(1.5, 0.0, 0.0, 0.0),
              child: FlutterFlowIconButton(
                borderRadius: 60.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                fillColor: Colors.white,
                icon: Icon(
                  Icons.qr_code_rounded,
                  color: valueOrDefault<Color>(
                    widget.homePage == 'studentQR'
                        ? FlutterFlowTheme.of(context).primary
                        : FlutterFlowTheme.of(context).secondaryText,
                    FlutterFlowTheme.of(context).secondaryText,
                  ),
                  size: 24.0,
                ),
                onPressed: () async {
                  context.goNamed('StudentQR');
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
