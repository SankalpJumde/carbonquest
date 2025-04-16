import '/components/reedem_g_i_f_t_c_a_r_d_s/reedem_g_i_f_t_c_a_r_d_s_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'reward_page_widget.dart' show RewardPageWidget;
import 'package:flutter/material.dart';

class RewardPageModel extends FlutterFlowModel<RewardPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ReedemGIFTCARDS component.
  late ReedemGIFTCARDSModel reedemGIFTCARDSModel;

  @override
  void initState(BuildContext context) {
    reedemGIFTCARDSModel = createModel(context, () => ReedemGIFTCARDSModel());
  }

  @override
  void dispose() {
    reedemGIFTCARDSModel.dispose();
  }
}
