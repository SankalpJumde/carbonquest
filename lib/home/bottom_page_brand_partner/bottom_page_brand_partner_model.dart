import '/components/brand_dashboard/brand_dashboard_widget.dart';
import '/components/brand_profile_component/brand_profile_component_widget.dart';
import '/components/newpost/newpost_widget.dart';
import '/components/proof_validation/proof_validation_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'bottom_page_brand_partner_widget.dart'
    show BottomPageBrandPartnerWidget;
import 'package:flutter/material.dart';

class BottomPageBrandPartnerModel
    extends FlutterFlowModel<BottomPageBrandPartnerWidget> {
  ///  Local state fields for this page.

  int? bottomadded = 0;

  bool order = false;

  ///  State fields for stateful widgets in this page.

  // Model for BrandDashboard component.
  late BrandDashboardModel brandDashboardModel;
  // Model for ProofValidation component.
  late ProofValidationModel proofValidationModel;
  // Model for BrandProfileComponent component.
  late BrandProfileComponentModel brandProfileComponentModel;
  // Model for newpost component.
  late NewpostModel newpostModel;

  @override
  void initState(BuildContext context) {
    brandDashboardModel = createModel(context, () => BrandDashboardModel());
    proofValidationModel = createModel(context, () => ProofValidationModel());
    brandProfileComponentModel =
        createModel(context, () => BrandProfileComponentModel());
    newpostModel = createModel(context, () => NewpostModel());
  }

  @override
  void dispose() {
    brandDashboardModel.dispose();
    proofValidationModel.dispose();
    brandProfileComponentModel.dispose();
    newpostModel.dispose();
  }
}
