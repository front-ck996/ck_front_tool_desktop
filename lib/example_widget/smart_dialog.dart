import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

class ExampleSmartDialog extends StatefulWidget {
  const ExampleSmartDialog({Key? key}) : super(key: key);

  @override
  State<ExampleSmartDialog> createState() => _ExampleSmartDialogState();
}

class _ExampleSmartDialogState extends State<ExampleSmartDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextButton(onPressed: (){
            // SmartDialog.showToast("default", displayType: SmartToastType.last);
            SmartDialog.showLoading(clickMaskDismiss: true);
          }, child: Text('default'))
        ],
      ),
    );
  }
}
