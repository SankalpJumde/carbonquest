import '/components/welcome1/welcome1_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'brand_dashboard_widget.dart' show BrandDashboardWidget;
import 'package:flutter/material.dart';

class BrandDashboardModel extends FlutterFlowModel<BrandDashboardWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for welcome1 component.
  late Welcome1Model welcome1Model;

  @override
  void initState(BuildContext context) {
    welcome1Model = createModel(context, () => Welcome1Model());
  }

  @override
  void dispose() {
    welcome1Model.dispose();
  }
}
