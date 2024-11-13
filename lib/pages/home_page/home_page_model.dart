import '/components/headerlogo/headerlogo_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../services/api_service.dart';
import '../models/job_model.dart';
import '../models/company_model.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  /// State fields for stateful widgets in this page.

  // Model for headerlogo component.
  late HeaderlogoModel headerlogoModel;

  // State fields for fetching data
  List<JobModel> jobs = [];
  List<CompanyModel> companies = [];
  bool isLoading = true;
  String errorMessage = '';

  final ApiService _apiService = ApiService();

  @override
  void initState(BuildContext context) {
    headerlogoModel = createModel(context, () => HeaderlogoModel());
    fetchHomeData();
  }

  @override
  void dispose() {
    headerlogoModel.dispose();
    super.dispose();
  }

  /// Fetch jobs and companies data from the API
  Future<void> fetchHomeData() async {
    try {
      jobs = await _apiService.fetchJobs();
      companies = await _apiService.fetchCompanies();
    } catch (e) {
      errorMessage = 'Failed to load data. Please try again later.';
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}

