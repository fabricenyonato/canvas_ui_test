import 'dart:math';
import './global.dart';

abstract class CUIElement {
    double w;
    double h;
    int x;
    int y;
    String fillStyle;
    String strokeStyle;
    bool Function() onClick;

    CUIElement({
        this.w = 0.0,
        this.h = 0.0,
        this.x = 0,
        this.y = 0,
        this.fillStyle = '#000',
        this.strokeStyle = '#000',
        this.onClick,
    });

    void fill() {
        Glogal g = new Glogal();

        g.context
        ..fillStyle = fillStyle
        ..fillRect(x, y, w, h);
        
    }

    void stroke() {
        Glogal g = new Glogal();

        g.context
        ..strokeStyle = strokeStyle
        ..strokeRect(x, y, w, h);

        g.elements.add(this);
    }

    bool pointInSurface(Point point) {
        return true;
    }
}
