import '/empty_component/favourite_empty/favourite_empty_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'favpage_model.dart';
export 'favpage_model.dart';

class FavpageWidget extends StatefulWidget {
  const FavpageWidget({super.key});

  static String routeName = 'FAVPAGE';
  static String routePath = 'favpage';

  @override
  State<FavpageWidget> createState() => _FavpageWidgetState();
}

class _FavpageWidgetState extends State<FavpageWidget> {
  late FavpageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FavpageModel());

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
          child: wrapWithModel(
            model: _model.favouriteEmptyModel,
            updateCallback: () => safeSetState(() {}),
            child: FavouriteEmptyWidget(),
          ),
        ),
      ),
    );
  }
}
