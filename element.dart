import 'dart:math';
import './global.dart';

abstract class CUIElement {
    double width;
    double height;
    int x;
    int y;
    String fillStyle;
    String strokeStyle;
    void Function() onClick;

    CUIElement({
        this.width = 0.0,
        this.height = 0.0,
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
        ..fillRect(x, y, width, height);
        
    }

    void stroke() {
        Glogal g = new Glogal();

        g.context
        ..strokeStyle = strokeStyle
        ..strokeRect(x, y, width, height);

        g.elements.add(this);
    }

    bool pointInSurface(Point point) {
        if (point.x < x || point.y < y) {
            return false;
        }

        if (point.x > (x + width) || point.y > (y + height)) {
            return false;
        }

        return true;
    }
}
