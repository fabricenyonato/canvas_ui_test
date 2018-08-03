import 'dart:html';
import './global.dart';
// import './helpers.dart';
import './rectangle.dart';
import './element.dart';

void main() {
    window.onLoad.listen(_init);
}

void _init(Event e) {
    Glogal g = new Glogal();
    CanvasElement c = new CanvasElement();
    BodyElement body = querySelector('body');

    c.onClick.listen((MouseEvent e) {
        Point p = e.offset;

        for (CUIElement e in g.elements) {
            if (e.onClick != null && e.pointInSurface(p)) {
                e.onClick();
            }
        }
    });

    g.context = c.getContext('2d');
    body.append(c);
    CUIRectangle r = new CUIRectangle(width: 50.0, height: 50.0, x: 10, y: 10);
    r.onClick = () {
        print('r.onClick');
    };
    r.stroke();
}
