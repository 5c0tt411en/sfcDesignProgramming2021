class SoundObject {
    SoundObject(int _x, int _y) {
        x = _x;
        y = _y;
        vx = (int)random(-2, 2);
        vy = (int)random(-2, 2);
        d = 10;
        c = color(255);
    }
    int x;
    int y;
    int d;
    int vx;
    int vy;
    color c;
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
    }
}
