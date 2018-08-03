import './element.dart';

class CUIRectangle extends CUIElement {
    double w;
    double h;
    int x;
    int y;
    String fillStyle;
    String strokeStyle;
    bool Function() onClick;

    CUIRectangle({
        this.w = 0.0,
        this.h = 0.0,
        this.x = 0,
        this.y = 0,
        this.fillStyle = '#000',
        this.strokeStyle = '#000',
        this.onClick,
    }): super(
        w: w,
        h: h,
        x: x,
        y: y,
        fillStyle: fillStyle,
        strokeStyle: strokeStyle,
        onClick: onClick,
    );
}
