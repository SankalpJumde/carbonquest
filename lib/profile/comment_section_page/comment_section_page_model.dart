import '/flutter_flow/flutter_flow_util.dart';
import 'comment_section_page_widget.dart' show CommentSectionPageWidget;
import 'package:flutter/material.dart';

class CommentSectionPageModel
    extends FlutterFlowModel<CommentSectionPageWidget> {
  ///  State fields for stateful widgets in this page.

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
