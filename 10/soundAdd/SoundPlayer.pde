class SoundPlayer {
    SoundPlayer(int _x, int _y) {
        x = _x;
        y = _y;
        d = 200;
        count = 0;
    }
    int x;
    int y;
    int d;
    int count;
    void draw() {
        count++;
        ellipse(x, y, d, d);
    }
}
