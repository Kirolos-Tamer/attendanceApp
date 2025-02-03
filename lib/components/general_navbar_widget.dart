import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'general_navbar_model.dart';
export 'general_navbar_model.dart';

class GeneralNavbarWidget extends StatefulWidget {
  const GeneralNavbarWidget({
    super.key,
    required this.homePage,
  });

  final String? homePage;

  @override
  State<GeneralNavbarWidget> createState() => _GeneralNavbarWidgetState();
}

class _GeneralNavbarWidgetState extends State<GeneralNavbarWidget> {
  late GeneralNavbarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GeneralNavbarModel());
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
                    'assets/images/Navbar.png',
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
                            widget.homePage == 'generalHome'
                                ? FlutterFlowTheme.of(context).primary
                                : FlutterFlowTheme.of(context).secondaryText,
                            FlutterFlowTheme.of(context).secondaryText,
                          ),
                          size: 27.0,
                        ),
                        onPressed: () async {
                          if (Navigator.of(context).canPop()) {
                            context.pop();
                          }
                          context.pushNamed('GeneralHome');
                        },
                      ),
                      FlutterFlowIconButton(
                        borderRadius: 8.0,
                        buttonSize: 40.0,
                        icon: Icon(
                          Icons.fingerprint_rounded,
                          color: valueOrDefault<Color>(
                            widget.homePage == 'generalFingerprint'
                                ? FlutterFlowTheme.of(context).primary
                                : FlutterFlowTheme.of(context).secondaryText,
                            FlutterFlowTheme.of(context).secondaryText,
                          ),
                          size: 27.0,
                        ),
                        onPressed: () async {
                          if (Navigator.of(context).canPop()) {
                            context.pop();
                          }
                          context.pushNamed('GeneralFingerprint');
                        },
                      ),
                      FlutterFlowIconButton(
                        borderRadius: 8.0,
                        buttonSize: 40.0,
                        icon: Icon(
                          Icons.person,
                          color: valueOrDefault<Color>(
                            widget.homePage == 'generalUser'
                                ? FlutterFlowTheme.of(context).primary
                                : FlutterFlowTheme.of(context).secondaryText,
                            FlutterFlowTheme.of(context).secondaryText,
                          ),
                          size: 27.0,
                        ),
                        onPressed: () async {
                          if (Navigator.of(context).canPop()) {
                            context.pop();
                          }
                          context.pushNamed('GeneralProfile');
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
