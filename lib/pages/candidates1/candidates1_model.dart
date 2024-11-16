import '/flutter_flow/flutter_flow_util.dart';
import 'candidates1_widget.dart' show Candidates1Widget;
import 'package:flutter/material.dart';

class Candidates1Model extends FlutterFlowModel<Candidates1Widget> {
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
