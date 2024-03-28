import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for txtNumeroDestino widget.
  FocusNode? txtNumeroDestinoFocusNode;
  TextEditingController? txtNumeroDestinoController;
  String? Function(BuildContext, String?)? txtNumeroDestinoControllerValidator;
  String? _txtNumeroDestinoControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Número de teléfono es requerido';
    }

    return null;
  }

  // State field(s) for txtMonto widget.
  FocusNode? txtMontoFocusNode;
  TextEditingController? txtMontoController;
  String? Function(BuildContext, String?)? txtMontoControllerValidator;
  String? _txtMontoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Monto es reqquerido';
    }

    return null;
  }

  // State field(s) for txtDescripcion widget.
  FocusNode? txtDescripcionFocusNode;
  TextEditingController? txtDescripcionController;
  String? Function(BuildContext, String?)? txtDescripcionControllerValidator;
  String? _txtDescripcionControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Descripción es requerida';
    }

    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    txtNumeroDestinoControllerValidator = _txtNumeroDestinoControllerValidator;
    txtMontoControllerValidator = _txtMontoControllerValidator;
    txtDescripcionControllerValidator = _txtDescripcionControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    txtNumeroDestinoFocusNode?.dispose();
    txtNumeroDestinoController?.dispose();

    txtMontoFocusNode?.dispose();
    txtMontoController?.dispose();

    txtDescripcionFocusNode?.dispose();
    txtDescripcionController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
