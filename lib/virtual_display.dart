import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_platformviews/my_scaffold.dart';

class VirtualDisplayExample extends StatefulWidget {
  const VirtualDisplayExample({Key? key}) : super(key: key);

  @override
  State<VirtualDisplayExample> createState() => _VirtualDisplayExampleState();
}

class _VirtualDisplayExampleState extends State<VirtualDisplayExample> {
  @override
  Widget build(BuildContext context) {
    const String viewType = 'platformviewtype';
    final Map<String, dynamic> creationParams = <String, dynamic>{};

    return MyScaffold(
      demo: 'VirtualDisplay',
      child: AndroidView(
        viewType: viewType,
        layoutDirection: TextDirection.ltr,
        creationParams: creationParams,
        creationParamsCodec: const StandardMessageCodec(),
      ),
    );
  }
}
