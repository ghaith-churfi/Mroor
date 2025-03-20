class Constant {
  static var primaryColor = hexColor('#00AEF9');
  // static var fillColor = hexColor("#FAFAFA");

  static int hexColor(String color) {
    String newColor = "0xff$color";
    newColor = newColor.replaceAll('#', '');
    return int.parse(newColor);
  }
}
