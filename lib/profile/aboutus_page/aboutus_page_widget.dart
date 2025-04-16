import '/components/common_app_bar/common_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'aboutus_page_model.dart';
export 'aboutus_page_model.dart';

class AboutusPageWidget extends StatefulWidget {
  const AboutusPageWidget({super.key});

  static String routeName = 'AboutusPage';
  static String routePath = 'aboutusPage';

  @override
  State<AboutusPageWidget> createState() => _AboutusPageWidgetState();
}

class _AboutusPageWidgetState extends State<AboutusPageWidget> {
  late AboutusPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AboutusPageModel());

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
        backgroundColor: FlutterFlowTheme.of(context).lightGray,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              wrapWithModel(
                model: _model.commonAppBarModel,
                updateCallback: () => safeSetState(() {}),
                child: CommonAppBarWidget(
                  name: 'About us',
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
                      24.0,
                    ),
                    scrollDirection: Axis.vertical,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Image.asset(
                          'assets/images/about.png',
                          width: 388.0,
                          height: 168.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        'What is Carbon Quest?',
                        textAlign: TextAlign.start,
                        maxLines: 1,
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Satoshi',
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              useGoogleFonts:
                                  GoogleFonts.asMap().containsKey('Satoshi'),
                            ),
                      ),
                      Text(
                        'Welcome to Carbon Quest – your personal mission to live greener, smarter, and more sustainably.',
                        textAlign: TextAlign.justify,
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Satoshi',
                              color: FlutterFlowTheme.of(context).textfiled,
                              fontSize: 17.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                              useGoogleFonts:
                                  GoogleFonts.asMap().containsKey('Satoshi'),
                            ),
                      ),
                      Text(
                        'Our Story\nIn a world rapidly warming and changing, every small action matters.\nBut how do you know if your choices are helping or harming the planet?\nThat’s where Carbon Quest comes in.\nWe started Carbon Quest with one simple idea:\nMake sustainability measurable, meaningful, and motivating for everyone.\nWe believe fighting climate change shouldn’t be complicated or boring.\nIt should be part of your everyday life — something you actually enjoy.',
                        textAlign: TextAlign.justify,
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Satoshi',
                              color: FlutterFlowTheme.of(context).textfiled,
                              fontSize: 17.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                              useGoogleFonts:
                                  GoogleFonts.asMap().containsKey('Satoshi'),
                            ),
                      ),
                      Text(
                        'Our Mission\nTo empower every individual to take climate action in small, everyday steps.\nWe want to create a world where sustainable living is simple, fun, and a part of everyone’s lifestyle.\nWe envision a generation of climate-conscious citizens who understand their impact — and act on it.',
                        textAlign: TextAlign.justify,
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Satoshi',
                              color: FlutterFlowTheme.of(context).textfiled,
                              fontSize: 17.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                              useGoogleFonts:
                                  GoogleFonts.asMap().containsKey('Satoshi'),
                            ),
                      ),
                    ].divide(SizedBox(height: 16.0)),
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
