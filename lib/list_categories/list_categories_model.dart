import '/flutter_flow/flutter_flow_util.dart';
import 'list_categories_widget.dart' show ListCategoriesWidget;
import 'package:flutter/material.dart';

class ListCategoriesModel extends FlutterFlowModel<ListCategoriesWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for searchBar widget.
  FocusNode? searchBarFocusNode;
  TextEditingController? searchBarTextController;
  String? Function(BuildContext, String?)? searchBarTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchBarFocusNode?.dispose();
    searchBarTextController?.dispose();
  }
}
