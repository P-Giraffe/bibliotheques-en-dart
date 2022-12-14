extension StringTools on String {
  bool get isValidURL => RegExp(
          r'^https?://[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$')
      .hasMatch(this);
}
