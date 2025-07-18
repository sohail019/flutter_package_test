import 'package:flutter/material.dart';
import 'package:flutter_package_test/envied/env.dart'; 

class EnvScreen extends StatelessWidget {
  const EnvScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final thisClass = ThisClass();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Environment Variables'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Environment Variables Example'),
            // Display the API key and base URL
            Text('API Key: ${Env.apiKey}'),
            Text('Base URL: ${Env.baseUrl}'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
              },
              child: const Text('Perform Action'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                thisClass.prinApiKey();
              },
              child: const Text('Print API Key (ThisClass)'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                final baseUrl = Env.baseUrl;
                print('Base URL: $baseUrl');
              },
              child: const Text('Print Base URL'),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
