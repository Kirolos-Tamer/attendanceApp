import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'academic_navbar_model.dart';
export 'academic_navbar_model.dart';

class AcademicNavbarWidget extends StatefulWidget {
  const AcademicNavbarWidget({
    super.key,
    required this.homePage,
  });

  final String? homePage;

  @override
  State<AcademicNavbarWidget> createState() => _AcademicNavbarWidgetState();
}

class _AcademicNavbarWidgetState extends State<AcademicNavbarWidget> {
  late AcademicNavbarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AcademicNavbarModel());
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
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
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
                            widget.homePage == 'academicHome'
                                ? FlutterFlowTheme.of(context).primary
                                : FlutterFlowTheme.of(context).secondaryText,
                            FlutterFlowTheme.of(context).secondaryText,
                          ),
                          size: 27.0,
                        ),
                        onPressed: () async {
                          context.pushNamed('AcademicHome');
                        },
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderRadius: 8.0,
                          buttonSize: 40.0,
                          icon: Icon(
                            Icons.fingerprint,
                            color: valueOrDefault<Color>(
                              widget.homePage == 'academicFingerprint'
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context).secondaryText,
                              FlutterFlowTheme.of(context).secondaryText,
                            ),
                            size: 27.0,
                          ),
                          onPressed: () async {
                            context.pushNamed('AcademicFingeprint');
                          },
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderRadius: 8.0,
                          buttonSize: 40.0,
                          icon: Icon(
                            Icons.analytics_outlined,
                            color: valueOrDefault<Color>(
                              widget.homePage == 'academicAnalysis'
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context).secondaryText,
                              FlutterFlowTheme.of(context).secondaryText,
                            ),
                            size: 27.0,
                          ),
                          onPressed: () async {
                            context.pushNamed('AcademicAnalysis');
                          },
                        ),
                      ),
                      FlutterFlowIconButton(
                        borderRadius: 8.0,
                        buttonSize: 40.0,
                        icon: Icon(
                          Icons.person,
                          color: valueOrDefault<Color>(
                            widget.homePage == 'academicProfile'
                                ? FlutterFlowTheme.of(context).primary
                                : FlutterFlowTheme.of(context).secondaryText,
                            FlutterFlowTheme.of(context).secondaryText,
                          ),
                          size: 27.0,
                        ),
                        onPressed: () async {
                          context.pushNamed('AcademicUser');
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
                    widget.homePage == 'academicQR'
                        ? FlutterFlowTheme.of(context).primary
                        : FlutterFlowTheme.of(context).secondaryText,
                    FlutterFlowTheme.of(context).secondaryText,
                  ),
                  size: 24.0,
                ),
                onPressed: () async {
                  context.goNamed('AcademicQR');
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
