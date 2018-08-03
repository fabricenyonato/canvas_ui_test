import './element.dart';

class CUIButton extends CUIElement {
    double width;
    double height;
    int x;
    int y;
    void Function() onClick;
    String text = 'CUIButton';

    CUIButton({
        this.width = 0.0,
        this.height = 0.0,
        this.x = 0,
        this.y = 0,
        this.onClick,
    }): super(
        width: width,
        height: height,
        x: x,
        y: y,
        onClick: onClick,
    );
}
