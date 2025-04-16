import '/components/basic_details/basic_details_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'user_signup_details_model.dart';
export 'user_signup_details_model.dart';

class UserSignupDetailsWidget extends StatefulWidget {
  const UserSignupDetailsWidget({super.key});

  static String routeName = 'UserSignupDetails';
  static String routePath = 'userSignupDetails';

  @override
  State<UserSignupDetailsWidget> createState() =>
      _UserSignupDetailsWidgetState();
}

class _UserSignupDetailsWidgetState extends State<UserSignupDetailsWidget> {
  late UserSignupDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserSignupDetailsModel());

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                wrapWithModel(
                  model: _model.basicDetailsModel,
                  updateCallback: () => safeSetState(() {}),
                  child: BasicDetailsWidget(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
