import '/components/student_navbar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'student_q_r_scaned_model.dart';
export 'student_q_r_scaned_model.dart';

class StudentQRScanedWidget extends StatefulWidget {
  const StudentQRScanedWidget({super.key});

  @override
  State<StudentQRScanedWidget> createState() => _StudentQRScanedWidgetState();
}

class _StudentQRScanedWidgetState extends State<StudentQRScanedWidget> {
  late StudentQRScanedModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StudentQRScanedModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFFECECEC),
        appBar: AppBar(
          backgroundColor: const Color(0xFF31BBD9),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Sure Attend',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Readex Pro',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 161.65, 0.0, 0.0),
                      child: Text(
                        'Attendance has been\n registered ✅',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Fredoka',
                              color: const Color(0xFF00C209),
                              fontSize: 24.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                              lineHeight: 2.0,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 117.0, 0.0, 10.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed(
                          'StudentHOME',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: const TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.leftToRight,
                              duration: Duration(milliseconds: 500),
                            ),
                          },
                        );
                      },
                      text: 'Back Home',
                      options: FFButtonOptions(
                        width: 230.0,
                        height: 50.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: const Color(0xFFECECEC),
                        textStyle:
                            FlutterFlowTheme.of(context).headlineSmall.override(
                                  fontFamily: 'Francois One',
                                  color: const Color(0xFF39BBD9),
                                  fontSize: 21.0,
                                  letterSpacing: 0.0,
                                ),
                        borderSide: const BorderSide(
                          color: Color(0xFF31BBD9),
                          width: 4.0,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                        hoverColor: const Color(0xFF31BBD9),
                        hoverTextColor: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 1.0),
                      child: wrapWithModel(
                        model: _model.studentNavbarModel,
                        updateCallback: () => safeSetState(() {}),
                        child: const StudentNavbarWidget(
                          homePage: 'studentQR',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
