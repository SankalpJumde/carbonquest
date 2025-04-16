import '/components/basic_details/basic_details_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'user_signup_details_widget.dart' show UserSignupDetailsWidget;
import 'package:flutter/material.dart';

class UserSignupDetailsModel extends FlutterFlowModel<UserSignupDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for BasicDetails component.
  late BasicDetailsModel basicDetailsModel;

  @override
  void initState(BuildContext context) {
    basicDetailsModel = createModel(context, () => BasicDetailsModel());
  }

  @override
  void dispose() {
    basicDetailsModel.dispose();
  }
}
