import '/empty_component/favourite_empty/favourite_empty_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'favpage_widget.dart' show FavpageWidget;
import 'package:flutter/material.dart';

class FavpageModel extends FlutterFlowModel<FavpageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for FavouriteEmpty component.
  late FavouriteEmptyModel favouriteEmptyModel;

  @override
  void initState(BuildContext context) {
    favouriteEmptyModel = createModel(context, () => FavouriteEmptyModel());
  }

  @override
  void dispose() {
    favouriteEmptyModel.dispose();
  }
}
