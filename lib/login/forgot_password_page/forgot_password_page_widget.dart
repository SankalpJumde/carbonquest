import '/components/common_app_bar/common_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'forgot_password_page_model.dart';
export 'forgot_password_page_model.dart';

class ForgotPasswordPageWidget extends StatefulWidget {
  const ForgotPasswordPageWidget({super.key});

  static String routeName = 'ForgotPasswordPage';
  static String routePath = 'forgotPasswordPage';

  @override
  State<ForgotPasswordPageWidget> createState() =>
      _ForgotPasswordPageWidgetState();
}

class _ForgotPasswordPageWidgetState extends State<ForgotPasswordPageWidget> {
  late ForgotPasswordPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ForgotPasswordPageModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              wrapWithModel(
                model: _model.commonAppBarModel,
                updateCallback: () => safeSetState(() {}),
                child: CommonAppBarWidget(
                  name: 'Forgot password',
                  color: true,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  child: ListView(
                    padding: EdgeInsets.fromLTRB(
                      0,
                      16.0,
                      0,
                      0,
                    ),
                    scrollDirection: Axis.vertical,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          'Type your email, we will send you verification code via email',
                          textAlign: TextAlign.start,
                          maxLines: 2,
                          style: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: 'Satoshi',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 17.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                                useGoogleFonts:
                                    GoogleFonts.asMap().containsKey('Satoshi'),
                                lineHeight: 1.5,
                              ),
                        ),
                      ),
                      Form(
                        key: _model.formKey,
                        autovalidateMode: AutovalidateMode.disabled,
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 42.0, 0.0, 0.0),
                          child: TextFormField(
                            controller: _model.textController,
                            focusNode: _model.textFieldFocusNode,
                            autofocus: true,
                            textInputAction: TextInputAction.done,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: false,
                              labelText: 'Email address',
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Satoshi',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    fontSize: 13.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey('Satoshi'),
                                  ),
                              hintText: 'Email address',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Satoshi',
                                    color: Color(0xFF696969),
                                    fontSize: 17.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey('Satoshi'),
                                  ),
                              errorStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Satoshi',
                                    color: FlutterFlowTheme.of(context).error,
                                    fontSize: 17.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey('Satoshi'),
                                    lineHeight: 1.2,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color:
                                      FlutterFlowTheme.of(context).borderColor,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 14.0, 16.0, 11.0),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Satoshi',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 17.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey('Satoshi'),
                                ),
                            keyboardType: TextInputType.emailAddress,
                            cursorColor: FlutterFlowTheme.of(context).primary,
                            validator: _model.textControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 48.0, 0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            if (_model.formKey.currentState == null ||
                                !_model.formKey.currentState!.validate()) {
                              return;
                            }

                            context.pushNamed(VerifyPageWidget.routeName);
                          },
                          text: 'Continue',
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 56.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 15.0, 12.0, 15.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Satoshi',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey('Satoshi'),
                                ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
