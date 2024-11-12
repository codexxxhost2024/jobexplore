import '/components/headerlogo/headerlogo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for headerlogo component.
  late HeaderlogoModel headerlogoModel;

  @override
  void initState(BuildContext context) {
    headerlogoModel = createModel(context, () => HeaderlogoModel());
  }

  @override
  void dispose() {
    headerlogoModel.dispose();
  }
}
