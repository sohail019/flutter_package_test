import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env', obfuscate: true)
class Env {
  @EnviedField(varName: 'API_KEY')
  static  String apiKey = _Env.apiKey;

  @EnviedField(varName: 'BASE_URL')
  static  String baseUrl = _Env.baseUrl;
}

class ThisClass {
  void prinApiKey() {
    print('API Key: ${Env.apiKey}');
  }
}


