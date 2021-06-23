class SoundPlayer {
    SoundPlayer(char _pressedKey, int _x, int _y) {
        pressedKey = _pressedKey;
        x = _x;
        y = _y;
        d = 200;
        count = 0;
        switch (pressedKey) {
        case '1': 
            mode = 1;
            c = color(216, 179, 101);
            break;
        case '2': 
            mode = 2; 
            c = color(246, 232, 195);
            break;
        case '3': 
            mode = 3; 
            c = color(199, 234, 229);
            break;
        case '4': 
            mode = 4; 
            c = color(90, 180, 172);
            break;
        }
    }
    int x;
    int y;
    int d;
    int count;
    color c;
    int mode;
    char pressedKey;
    void draw() {
        strokeCap(SQUARE);
        noFill();
        stroke(c);
        strokeWeight(2);
        count++;
        ellipse(x, y, d, d);
        if (count == 60 * mode)
            count = 0;
        strokeWeight(10);
        for (int i = 0; i < count; i++) {
            float co = cos(radians(float(i) * 6 / float(mode)));
            float si = sin(radians(float(i) * 6 / float(mode)));
            line(x + 50 * co, y + 50 * si, x + 75 * co, y + 75 * si);
        }
    }
}
