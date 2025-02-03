import '/components/academic_navbar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'academic_fingeprint_model.dart';
export 'academic_fingeprint_model.dart';

class AcademicFingeprintWidget extends StatefulWidget {
  const AcademicFingeprintWidget({super.key});

  @override
  State<AcademicFingeprintWidget> createState() =>
      _AcademicFingeprintWidgetState();
}

class _AcademicFingeprintWidgetState extends State<AcademicFingeprintWidget> {
  late AcademicFingeprintModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AcademicFingeprintModel());
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
                          const EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 0.0),
                      child: Container(
                        width: 225.9,
                        height: 223.3,
                        decoration: BoxDecoration(
                          color: const Color(0xFFECECEC),
                          image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: Image.asset(
                              'assets/images/fingerprint_unpressed_.png',
                            ).image,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(60.0, 0.0, 60.0, 0.0),
                    child: Text(
                      'Scan Your Finger On Fingerprint',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Fredoka',
                            color: Colors.black,
                            fontSize: 20.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                            lineHeight: 2.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed(
                          'AcademicHome',
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
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  wrapWithModel(
                    model: _model.academicNavbarModel,
                    updateCallback: () => safeSetState(() {}),
                    child: const AcademicNavbarWidget(
                      homePage: 'academicFingerprint',
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
