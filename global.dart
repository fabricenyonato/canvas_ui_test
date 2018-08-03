import 'dart:html';
import './element.dart';

class Glogal {
    static final Glogal _instance = new Glogal._internal();
    CanvasRenderingContext2D context;
    List<CUIElement> elements = [];

    factory Glogal() {
        return _instance;
    }

    Glogal._internal();
}
