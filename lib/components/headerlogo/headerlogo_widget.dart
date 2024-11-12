import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'headerlogo_model.dart';
export 'headerlogo_model.dart';

class HeaderlogoWidget extends StatefulWidget {
  const HeaderlogoWidget({super.key});

  @override
  State<HeaderlogoWidget> createState() => _HeaderlogoWidgetState();
}

class _HeaderlogoWidgetState extends State<HeaderlogoWidget> {
  late HeaderlogoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeaderlogoModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: const BoxDecoration(),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/logo.png',
                width: 130.0,
                height: 50.0,
                fit: BoxFit.contain,
              ),
            ),
          ),
          FaIcon(
            FontAwesomeIcons.solidUserCircle,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 28.0,
          ),
        ],
      ),
    );
  }
}
