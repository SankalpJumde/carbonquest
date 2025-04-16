import '/components/common_app_bar/common_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'search_page_student_widget.dart' show SearchPageStudentWidget;
import 'package:flutter/material.dart';

class SearchPageStudentModel extends FlutterFlowModel<SearchPageStudentWidget> {
  ///  Local state fields for this page.

  bool focus = false;

  ///  State fields for stateful widgets in this page.

  // Model for CommonAppBar component.
  late CommonAppBarModel commonAppBarModel;
  // State field(s) for Textfiled_search widget.
  FocusNode? textfiledSearchFocusNode;
  TextEditingController? textfiledSearchTextController;
  String? Function(BuildContext, String?)?
      textfiledSearchTextControllerValidator;

  @override
  void initState(BuildContext context) {
    commonAppBarModel = createModel(context, () => CommonAppBarModel());
  }

  @override
  void dispose() {
    commonAppBarModel.dispose();
    textfiledSearchFocusNode?.dispose();
    textfiledSearchTextController?.dispose();
  }
}
