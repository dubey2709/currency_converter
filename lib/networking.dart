import 'package:http/http.dart' as http;
import 'dart:convert';

class DataFetch {
  DataFetch(this.url);
  final String url;
  Future getData() async {
    final http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return data;
    } else {
      print(response.statusCode);
    }
  }
}
