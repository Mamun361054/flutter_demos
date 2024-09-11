import 'package:flutter/painting.dart' show Color;
import 'package:pokeball_anim/solution3/framework/interpolatable_object.dart';

class PokeballData extends InterpolatableObject {

  PokeballData(
      {double size,
      double altitude,
      double offsetX,
      double rotation,
      Color buttonColor,
      double buttonBlurWidth})
      : assert(size != null && size > 0.0),
        assert(altitude != null),
        assert(rotation != null),
        assert(offsetX != null),
        assert(buttonBlurWidth != null && buttonBlurWidth >= 0.0),
        assert(buttonColor != null),
        super(data: {
        "size": size,
        "altitude": altitude,
        "offsetX": offsetX,
        "rotation": rotation,
        "color": InterpolatableColor.color(buttonColor),
        "buttonBlurWidth": buttonBlurWidth,
      });

  PokeballData._(Map<String, dynamic> map):super(data: map);

  double get size => get("size");
  double get altitude => get("altitude");
  double get offsetX => get("offsetX");
  double get rotation => get("rotation");
  Color get buttonColor => get("color").color;
  double get buttonBlurWidth => get("buttonBlurWidth");

  @override
  InterpolatableObjectMixin instanceWithAttributes(Map<String, dynamic> from) => PokeballData._(from);

  PokeballData copyWith(
  {double size,
      double altitude,
      double offsetX,
      double rotation,
      Color buttonColor,
      double buttonBlurWidth}) {
    return PokeballData(
      size: size ?? this.size,
      offsetX: offsetX ?? this.offsetX,
      altitude: altitude ?? this.altitude,
      rotation: rotation ?? this.rotation,
      buttonColor: buttonColor ?? this.buttonColor,
      buttonBlurWidth: buttonBlurWidth ?? this.buttonBlurWidth,
    );
  }
}