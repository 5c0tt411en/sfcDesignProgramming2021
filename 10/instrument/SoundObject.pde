class SoundObject {
    SoundObject(char _pressedKey, int _x, int _y) {
        x = _x;
        y = _y;
        vx = (int)random(-2, 2);
        vy = (int)random(-2, 2);
        d = 10;
        pressedKey = _pressedKey;
        switch (pressedKey) {
        case '5': 
            c = color(94, 79, 162);
            break;
        case '6': 
            c = color(102, 194, 165);
            break;
        case '7': 
            c = color(230, 245, 152);
            break;
        case '8': 
            c = color(244, 109, 67);
            break;
        case '9':
            c = color(50, 136, 189);
            break;
        }
        count = 0;
        wave = false;
    }
    int x;
    int y;
    int d;
    int vx;
    int vy;
    color c;
    char pressedKey;
    Boolean wave;
    int count;
    void update() {
        x += vx;
        y += vy;
        if (x >= width - d / 2 || x <= d / 2)
            vx = -vx;
        if (y >= height - d / 2 || y <= d / 2)
            vy = -vy;
    }
    void draw() {
        noStroke();
        fill(c);
        ellipse(x, y, d, d);
        if (wave) {
            count+=5;
            noFill();
            strokeWeight(2);
            stroke(c);
            ellipse(x, y, d + count, d + count);
            if (count >= 60 * 5) {
                count = 0;
                wave = false;
            }
        }
    }
}
