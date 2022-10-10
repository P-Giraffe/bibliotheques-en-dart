import 'package:test/test.dart';
import 'package:pgf_tools/pgf_tools.dart';

void main() {
  group('StringTools', () {
    test('isValidURL', () {
      expect('https://www.purplegiraffe.fr'.isValidURL, isTrue);
      expect('http://www.purplegiraffe.fr'.isValidURL, isTrue);
      expect('http://www.purple giraffe.fr'.isValidURL, isFalse);
      expect('www.purplegiraffe.fr'.isValidURL, isFalse);
    });
  });
}
