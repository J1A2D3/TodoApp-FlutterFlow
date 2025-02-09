import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for Signip-Email widget.
  FocusNode? signipEmailFocusNode;
  TextEditingController? signipEmailTextController;
  String? Function(BuildContext, String?)? signipEmailTextControllerValidator;
  String? _signipEmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email... is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for Signup-Password widget.
  FocusNode? signupPasswordFocusNode;
  TextEditingController? signupPasswordTextController;
  late bool signupPasswordVisibility;
  String? Function(BuildContext, String?)?
      signupPasswordTextControllerValidator;
  String? _signupPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password... is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  // State field(s) for Signup-Cofirm-Password widget.
  FocusNode? signupCofirmPasswordFocusNode;
  TextEditingController? signupCofirmPasswordTextController;
  late bool signupCofirmPasswordVisibility;
  String? Function(BuildContext, String?)?
      signupCofirmPasswordTextControllerValidator;
  String? _signupCofirmPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Confirm Password... is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  // State field(s) for Login-Email widget.
  FocusNode? loginEmailFocusNode;
  TextEditingController? loginEmailTextController;
  String? Function(BuildContext, String?)? loginEmailTextControllerValidator;
  // State field(s) for Login-Password widget.
  FocusNode? loginPasswordFocusNode;
  TextEditingController? loginPasswordTextController;
  late bool loginPasswordVisibility;
  String? Function(BuildContext, String?)? loginPasswordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    signipEmailTextControllerValidator = _signipEmailTextControllerValidator;
    signupPasswordVisibility = false;
    signupPasswordTextControllerValidator =
        _signupPasswordTextControllerValidator;
    signupCofirmPasswordVisibility = false;
    signupCofirmPasswordTextControllerValidator =
        _signupCofirmPasswordTextControllerValidator;
    loginPasswordVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    signipEmailFocusNode?.dispose();
    signipEmailTextController?.dispose();

    signupPasswordFocusNode?.dispose();
    signupPasswordTextController?.dispose();

    signupCofirmPasswordFocusNode?.dispose();
    signupCofirmPasswordTextController?.dispose();

    loginEmailFocusNode?.dispose();
    loginEmailTextController?.dispose();

    loginPasswordFocusNode?.dispose();
    loginPasswordTextController?.dispose();
  }
}
