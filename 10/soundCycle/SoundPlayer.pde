class SoundPlayer {
    SoundPlayer(int _x, int _y) {
        x = _x;
        y = _y;
        d = 200;
        count = 0;
        c = color(255);
    }
    int x;
    int y;
    int d;
    int count;
    color c;
    void draw() {
        strokeCap(SQUARE);
        noFill();
        stroke(c);
        strokeWeight(2);
        count++;
        ellipse(x, y, d, d);
        if (count == 60)
            count = 0;
        strokeWeight(10);
        for (int i = 0; i < count; i++) {
            float co = cos(radians(float(i) * 6));
            float si = sin(radians(float(i) * 6));
            line(x + 50 * co, y + 50 * si, x + 75 * co, y + 75 * si);
        }
    }
}
