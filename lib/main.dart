import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider/providerDemo.dart';
import './page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProviderDemo(), //initialize provider
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Provider demo'),
          ),
          body: page1(),
        ),
      ),
    );
  }
}

class page1 extends StatelessWidget {
  const page1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(Provider.of<ProviderDemo>(context)
            .message), //accessing provider value
        const SizedBox(
          width: double.infinity,
        ),
        ElevatedButton(
          onPressed: () {
            Provider.of<ProviderDemo>(context, listen: false).changeValue();
          },
          child: const Text('Update'),
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Page2(),
                ),
              );
            },
            child: Text('Goto Page 2'))
      ],
    );
  }
}
