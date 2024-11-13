import '/components/headerlogo/headerlogo_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomePageModel>(
      create: (_) => _model,
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            automaticallyImplyLeading: false,
            title: wrapWithModel(
              model: _model.headerlogoModel,
              updateCallback: () => safeSetState(() {}),
              child: const HeaderlogoWidget(),
            ),
            actions: const [],
            centerTitle: false,
            elevation: 0.0,
          ),
          body: SafeArea(
            top: true,
            child: Consumer<HomePageModel>(
              builder: (context, model, child) {
                if (model.isLoading) {
                  return Center(child: CircularProgressIndicator());
                }

                if (model.errorMessage.isNotEmpty) {
                  return Center(child: Text(model.errorMessage));
                }

                return SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      // Latest Job Posts Section
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Latest Job Posts',
                              style: FlutterFlowTheme.of(context).title3,
                            ),
                            SizedBox(height: 10),
                            ListView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: model.jobs.length,
                              itemBuilder: (context, index) {
                                final job = model.jobs[index];
                                return Card(
                                  elevation: 2,
                                  margin: EdgeInsets.symmetric(vertical: 8.0),
                                  child: ListTile(
                                    title: Text(job.title),
                                    subtitle: Text(
                                      job.description,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    trailing: Icon(Icons.arrow_forward_ios),
                                    onTap: () {
                                      Navigator.pushNamed(
                                        context,
                                        '/jobDetails',
                                        arguments: job,
                                      );
                                    },
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      Divider(),
                      // Top Companies Section
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Top Companies',
                              style: FlutterFlowTheme.of(context).title3,
                            ),
                            SizedBox(height: 10),
                            ListView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: model.companies.length,
                              itemBuilder: (context, index) {
                                final company = model.companies[index];
                                return Card(
                                  elevation: 2,
                                  margin: EdgeInsets.symmetric(vertical: 8.0),
                                  child: ListTile(
                                    leading: Icon(Icons.business, size: 40, color: Colors.blue),
                                    title: Text(company.name),
                                    subtitle: Text(
                                      company.profile,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    trailing: Icon(Icons.arrow_forward_ios),
                                    onTap: () {
                                      Navigator.pushNamed(
                                        context,
                                        '/companyProfile',
                                        arguments: company,
                                      );
                                    },
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
