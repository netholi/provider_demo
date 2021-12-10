import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './provider/providerDemo.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('page 2'),
      ),
      body: Container(
        child: Column(
          children: [Text(Provider.of<ProviderDemo>(context).message)],
        ),
      ),
    );
  }
}
