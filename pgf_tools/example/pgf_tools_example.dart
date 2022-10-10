import 'package:pgf_tools/pgf_tools.dart';

void main() {
  final url = "https://www.purplegiraffe.fr";
  if (url.isValidURL) {
    print("URL is valid");
  } else {
    print("URL is not valid");
  }
}
