import '/flutter_flow/flutter_flow_util.dart';
import 'user_explore_component_widget.dart' show UserExploreComponentWidget;
import 'package:flutter/material.dart';

class UserExploreComponentModel
    extends FlutterFlowModel<UserExploreComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
