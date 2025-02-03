import '/components/academic_navbar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'academic_analysis_model.dart';
export 'academic_analysis_model.dart';

class AcademicAnalysisWidget extends StatefulWidget {
  const AcademicAnalysisWidget({
    super.key,
    this.searchID,
  });

  final List<String>? searchID;

  @override
  State<AcademicAnalysisWidget> createState() => _AcademicAnalysisWidgetState();
}

class _AcademicAnalysisWidgetState extends State<AcademicAnalysisWidget> {
  late AcademicAnalysisModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AcademicAnalysisModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
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
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    8.0, 10.0, 8.0, 10.0),
                                child: SizedBox(
                                  width: 220.0,
                                  child: TextFormField(
                                    controller: _model.textController,
                                    focusNode: _model.textFieldFocusNode,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      '_model.textController',
                                      const Duration(milliseconds: 2000),
                                      () => safeSetState(() {}),
                                    ),
                                    autofocus: false,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      isDense: true,
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            color: Colors.black,
                                            letterSpacing: 0.0,
                                          ),
                                      hintText: 'Search [ ID ]',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Fredoka',
                                            color: Colors.black,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0xFF31BBD9),
                                          width: 3.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0xFF31BBD9),
                                          width: 3.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 3.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 3.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                      filled: true,
                                      fillColor: const Color(0xFFECECEC),
                                      prefixIcon: const Icon(
                                        Icons.search_rounded,
                                        color: Colors.black,
                                      ),
                                      suffixIcon: _model
                                              .textController!.text.isNotEmpty
                                          ? InkWell(
                                              onTap: () async {
                                                _model.textController?.clear();
                                                safeSetState(() {});
                                              },
                                              child: const Icon(
                                                Icons.clear,
                                                color: Colors.black,
                                                size: 22,
                                              ),
                                            )
                                          : null,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          color: Colors.black,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                    cursorColor: Colors.black,
                                    validator: _model.textControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 0.0, 0.0, 110.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ListView(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 5.0, 10.0, 5.0),
                                  child: Material(
                                    color: Colors.transparent,
                                    child: ListTile(
                                      title: Text(
                                        'Kirolos Tamer Sobhy',
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Fredoka',
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      subtitle: Text(
                                        '23020161',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Fredoka',
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      trailing: const Icon(
                                        Icons.open_in_full,
                                        color: Color(0xFF31BBD9),
                                        size: 24.0,
                                      ),
                                      tileColor: const Color(0xFFDADADA),
                                      dense: false,
                                      contentPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              20.0, 0.0, 20.0, 0.0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 5.0, 10.0, 5.0),
                                  child: Material(
                                    color: Colors.transparent,
                                    child: ListTile(
                                      title: Text(
                                        'Kirolos Tamer Sobhy',
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Fredoka',
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      subtitle: Text(
                                        '23020161',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Fredoka',
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      trailing: const Icon(
                                        Icons.open_in_full,
                                        color: Color(0xFF31BBD9),
                                        size: 24.0,
                                      ),
                                      tileColor: const Color(0xFFDADADA),
                                      dense: false,
                                      contentPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              20.0, 0.0, 20.0, 0.0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 5.0, 10.0, 5.0),
                                  child: Material(
                                    color: Colors.transparent,
                                    child: ListTile(
                                      title: Text(
                                        'Kirolos Tamer Sobhy',
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Fredoka',
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      subtitle: Text(
                                        '23020161',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Fredoka',
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      trailing: const Icon(
                                        Icons.open_in_full,
                                        color: Color(0xFF31BBD9),
                                        size: 24.0,
                                      ),
                                      tileColor: const Color(0xFFDADADA),
                                      dense: false,
                                      contentPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              20.0, 0.0, 20.0, 0.0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 5.0, 10.0, 5.0),
                                  child: Material(
                                    color: Colors.transparent,
                                    child: ListTile(
                                      title: Text(
                                        'Kirolos Tamer Sobhy',
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Fredoka',
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      subtitle: Text(
                                        '23020161',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Fredoka',
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      trailing: const Icon(
                                        Icons.open_in_full,
                                        color: Color(0xFF31BBD9),
                                        size: 24.0,
                                      ),
                                      tileColor: const Color(0xFFDADADA),
                                      dense: false,
                                      contentPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              20.0, 0.0, 20.0, 0.0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 5.0, 10.0, 5.0),
                                  child: Material(
                                    color: Colors.transparent,
                                    child: ListTile(
                                      title: Text(
                                        'Kirolos Tamer Sobhy',
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Fredoka',
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      subtitle: Text(
                                        '23020161',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Fredoka',
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      trailing: const Icon(
                                        Icons.open_in_full,
                                        color: Color(0xFF31BBD9),
                                        size: 24.0,
                                      ),
                                      tileColor: const Color(0xFFDADADA),
                                      dense: false,
                                      contentPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              20.0, 0.0, 20.0, 0.0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 5.0, 10.0, 5.0),
                                  child: Material(
                                    color: Colors.transparent,
                                    child: ListTile(
                                      title: Text(
                                        'Kirolos Tamer Sobhy',
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Fredoka',
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      subtitle: Text(
                                        '23020161',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Fredoka',
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      trailing: const Icon(
                                        Icons.open_in_full,
                                        color: Color(0xFF31BBD9),
                                        size: 24.0,
                                      ),
                                      tileColor: const Color(0xFFDADADA),
                                      dense: false,
                                      contentPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              20.0, 0.0, 20.0, 0.0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 5.0, 10.0, 5.0),
                                  child: Material(
                                    color: Colors.transparent,
                                    child: ListTile(
                                      title: Text(
                                        'Kirolos Tamer Sobhy',
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Fredoka',
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      subtitle: Text(
                                        '23020161',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Fredoka',
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      trailing: const Icon(
                                        Icons.open_in_full,
                                        color: Color(0xFF31BBD9),
                                        size: 24.0,
                                      ),
                                      tileColor: const Color(0xFFDADADA),
                                      dense: false,
                                      contentPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              20.0, 0.0, 20.0, 0.0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 5.0, 10.0, 5.0),
                                  child: Material(
                                    color: Colors.transparent,
                                    child: ListTile(
                                      title: Text(
                                        'Kirolos Tamer Sobhy',
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Fredoka',
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      subtitle: Text(
                                        '23020161',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Fredoka',
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      trailing: const Icon(
                                        Icons.open_in_full,
                                        color: Color(0xFF31BBD9),
                                        size: 24.0,
                                      ),
                                      tileColor: const Color(0xFFDADADA),
                                      dense: false,
                                      contentPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              20.0, 0.0, 20.0, 0.0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 5.0, 10.0, 5.0),
                                  child: Material(
                                    color: Colors.transparent,
                                    child: ListTile(
                                      title: Text(
                                        'Kirolos Tamer Sobhy',
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Fredoka',
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      subtitle: Text(
                                        '23020161',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Fredoka',
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      trailing: const Icon(
                                        Icons.open_in_full,
                                        color: Color(0xFF31BBD9),
                                        size: 24.0,
                                      ),
                                      tileColor: const Color(0xFFDADADA),
                                      dense: false,
                                      contentPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              20.0, 0.0, 20.0, 0.0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 5.0, 10.0, 5.0),
                                  child: Material(
                                    color: Colors.transparent,
                                    child: ListTile(
                                      title: Text(
                                        'Kirolos Tamer Sobhy',
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Fredoka',
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      subtitle: Text(
                                        '23020161',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Fredoka',
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      trailing: const Icon(
                                        Icons.open_in_full,
                                        color: Color(0xFF31BBD9),
                                        size: 24.0,
                                      ),
                                      tileColor: const Color(0xFFDADADA),
                                      dense: false,
                                      contentPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              20.0, 0.0, 20.0, 0.0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 5.0, 10.0, 5.0),
                                  child: Material(
                                    color: Colors.transparent,
                                    child: ListTile(
                                      title: Text(
                                        'Kirolos Tamer Sobhy',
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Fredoka',
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      subtitle: Text(
                                        '23020161',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Fredoka',
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      trailing: const Icon(
                                        Icons.open_in_full,
                                        color: Color(0xFF31BBD9),
                                        size: 24.0,
                                      ),
                                      tileColor: const Color(0xFFDADADA),
                                      dense: false,
                                      contentPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              20.0, 0.0, 20.0, 0.0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 5.0, 10.0, 5.0),
                                  child: Material(
                                    color: Colors.transparent,
                                    child: ListTile(
                                      title: Text(
                                        'Kirolos Tamer Sobhy',
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Fredoka',
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      subtitle: Text(
                                        '23020161',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Fredoka',
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      trailing: const Icon(
                                        Icons.open_in_full,
                                        color: Color(0xFF31BBD9),
                                        size: 24.0,
                                      ),
                                      tileColor: const Color(0xFFDADADA),
                                      dense: false,
                                      contentPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              20.0, 0.0, 20.0, 0.0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 5.0, 10.0, 5.0),
                                  child: Material(
                                    color: Colors.transparent,
                                    child: ListTile(
                                      title: Text(
                                        'Kirolos Tamer Sobhy',
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Fredoka',
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      subtitle: Text(
                                        '23020161',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Fredoka',
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      trailing: const Icon(
                                        Icons.open_in_full,
                                        color: Color(0xFF31BBD9),
                                        size: 24.0,
                                      ),
                                      tileColor: const Color(0xFFDADADA),
                                      dense: false,
                                      contentPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              20.0, 0.0, 20.0, 0.0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 5.0, 10.0, 5.0),
                                  child: Material(
                                    color: Colors.transparent,
                                    child: ListTile(
                                      title: Text(
                                        'Kirolos Tamer Sobhy',
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Fredoka',
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      subtitle: Text(
                                        '23020161',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Fredoka',
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      trailing: const Icon(
                                        Icons.open_in_full,
                                        color: Color(0xFF31BBD9),
                                        size: 24.0,
                                      ),
                                      tileColor: const Color(0xFFDADADA),
                                      dense: false,
                                      contentPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              20.0, 0.0, 20.0, 0.0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 5.0, 10.0, 5.0),
                                  child: Material(
                                    color: Colors.transparent,
                                    child: ListTile(
                                      title: Text(
                                        'Kirolos Tamer Sobhy',
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Fredoka',
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      subtitle: Text(
                                        '23020161',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Fredoka',
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      trailing: const Icon(
                                        Icons.open_in_full,
                                        color: Color(0xFF31BBD9),
                                        size: 24.0,
                                      ),
                                      tileColor: const Color(0xFFDADADA),
                                      dense: false,
                                      contentPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              20.0, 0.0, 20.0, 0.0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 5.0, 10.0, 5.0),
                                  child: Material(
                                    color: Colors.transparent,
                                    child: ListTile(
                                      title: Text(
                                        'Kirolos Tamer Sobhy',
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Fredoka',
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      subtitle: Text(
                                        '23020161',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Fredoka',
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      trailing: const Icon(
                                        Icons.open_in_full,
                                        color: Color(0xFF31BBD9),
                                        size: 24.0,
                                      ),
                                      tileColor: const Color(0xFFDADADA),
                                      dense: false,
                                      contentPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              20.0, 0.0, 20.0, 0.0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 5.0, 10.0, 5.0),
                                  child: Material(
                                    color: Colors.transparent,
                                    child: ListTile(
                                      title: Text(
                                        'Kirolos Tamer Sobhy',
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Fredoka',
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      subtitle: Text(
                                        '23020161',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Fredoka',
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      trailing: const Icon(
                                        Icons.open_in_full,
                                        color: Color(0xFF31BBD9),
                                        size: 24.0,
                                      ),
                                      tileColor: const Color(0xFFDADADA),
                                      dense: false,
                                      contentPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              20.0, 0.0, 20.0, 0.0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 5.0, 10.0, 5.0),
                                  child: Material(
                                    color: Colors.transparent,
                                    child: ListTile(
                                      title: Text(
                                        'Kirolos Tamer Sobhy',
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Fredoka',
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      subtitle: Text(
                                        '23020161',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Fredoka',
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      trailing: const Icon(
                                        Icons.open_in_full,
                                        color: Color(0xFF31BBD9),
                                        size: 24.0,
                                      ),
                                      tileColor: const Color(0xFFDADADA),
                                      dense: false,
                                      contentPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              20.0, 0.0, 20.0, 0.0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 5.0, 10.0, 5.0),
                                  child: Material(
                                    color: Colors.transparent,
                                    child: ListTile(
                                      title: Text(
                                        'Kirolos Tamer Sobhy',
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Fredoka',
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      subtitle: Text(
                                        '23020161',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Fredoka',
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      trailing: const Icon(
                                        Icons.open_in_full,
                                        color: Color(0xFF31BBD9),
                                        size: 24.0,
                                      ),
                                      tileColor: const Color(0xFFDADADA),
                                      dense: false,
                                      contentPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              20.0, 0.0, 20.0, 0.0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 5.0, 10.0, 5.0),
                                  child: Material(
                                    color: Colors.transparent,
                                    child: ListTile(
                                      title: Text(
                                        'Kirolos Tamer Sobhy',
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Fredoka',
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      subtitle: Text(
                                        '23020161',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Fredoka',
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      trailing: const Icon(
                                        Icons.open_in_full,
                                        color: Color(0xFF31BBD9),
                                        size: 24.0,
                                      ),
                                      tileColor: const Color(0xFFDADADA),
                                      dense: false,
                                      contentPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              20.0, 0.0, 20.0, 0.0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40.0),
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
                  ],
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  wrapWithModel(
                    model: _model.academicNavbarModel,
                    updateCallback: () => safeSetState(() {}),
                    child: const AcademicNavbarWidget(
                      homePage: 'academicAnalysis',
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
