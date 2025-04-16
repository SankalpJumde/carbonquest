import '/components/carbondashboard/carbondashboard_widget.dart';
import '/components/user_explore_component/user_explore_component_widget.dart';
import '/components/user_home_component/user_home_component_widget.dart';
import '/components/user_profile_component/user_profile_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'bottom_page_user_widget.dart' show BottomPageUserWidget;
import 'package:flutter/material.dart';

class BottomPageUserModel extends FlutterFlowModel<BottomPageUserWidget> {
  ///  Local state fields for this page.

  int? bottomadded = 0;

  bool order = false;

  ///  State fields for stateful widgets in this page.

  // Model for UserHomeComponent component.
  late UserHomeComponentModel userHomeComponentModel;
  // Model for UserExploreComponent component.
  late UserExploreComponentModel userExploreComponentModel;
  // Model for carbondashboard component.
  late CarbondashboardModel carbondashboardModel;
  // Model for UserProfileComponent component.
  late UserProfileComponentModel userProfileComponentModel;

  @override
  void initState(BuildContext context) {
    userHomeComponentModel =
        createModel(context, () => UserHomeComponentModel());
    userExploreComponentModel =
        createModel(context, () => UserExploreComponentModel());
    carbondashboardModel = createModel(context, () => CarbondashboardModel());
    userProfileComponentModel =
        createModel(context, () => UserProfileComponentModel());
  }

  @override
  void dispose() {
    userHomeComponentModel.dispose();
    userExploreComponentModel.dispose();
    carbondashboardModel.dispose();
    userProfileComponentModel.dispose();
  }
}
