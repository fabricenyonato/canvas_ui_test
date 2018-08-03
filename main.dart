import 'dart:html';
import './global.dart';
import './helpers.dart';
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
        log(e.offset);

        for (CUIElement e in g.elements) {
            if (e.onClick != null) {
                e.onClick();
            }
        }
    });

    g.context = c.getContext('2d');
    body.append(c);
    CUIRectangle r = new CUIRectangle(w: 100.0, h: 50.0);
    r.onClick = () {
        print('r.onClick');
    };
    r.stroke();
}
